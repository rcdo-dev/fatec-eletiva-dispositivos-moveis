import 'package:app_crud/module/profile/widgets/profile_menu_button_widget.dart';
import 'package:app_crud/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;
import '../widgets/menu_buttons_widget.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.only(
          top: sizeScreen.height / 12,
          left: sizeScreen.width / 12,
          right: sizeScreen.width / 12,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(
              'Perfil',
              style: AppTheme.styles.title900,
            ),
            SizedBox(
              height: sizeScreen.height / 28,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    SizedBox(
                      height: sizeScreen.height / 6,
                      width: sizeScreen.width / 3,
                      child: CircularProgressIndicator(
                        value: 0.75,
                        color: AppTheme.colors.secondary100,
                      ),
                    ),
                    Positioned(
                      top: 5,
                      child: Image.asset(
                        image.profilePicture,
                        height: sizeScreen.height / 6.5,
                        width: sizeScreen.width / 3,
                      ),
                    ),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Gustavo Moreira',
                      style: AppTheme.styles.title700,
                    ),
                    Text(
                      'gustavo.moreira@gmail.com',
                      style: AppTheme.styles.text400,
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(
              height: sizeScreen.height / 28,
            ),
            const MenuButtonsWidget(
              title: 'Configurações',
              children: <Widget>[
                ProfileMenuButtonWidget(
                  buttonLabel: 'Editar perfil',
                ),
                ProfileMenuButtonWidget(
                  buttonLabel: 'Alterar senha',
                ),
              ],
            ),
            SizedBox(
              height: sizeScreen.height / 28,
            ),
            const MenuButtonsWidget(
              title: 'Suporte',
              children: <Widget>[
                ProfileMenuButtonWidget(
                  buttonLabel: 'Ajuda e suporte',
                ),
                ProfileMenuButtonWidget(
                  buttonLabel: 'Sobre MW Marketplace',
                ),
              ],
            ),
            SizedBox(
              height: sizeScreen.height / 36,
            ),
            Center(
              child: TextButton(
                onPressed: () {
                  Modular.to.navigate(
                    '/loginModule/',
                  );
                },
                child: const Text(
                  'Deslogar',
                  style: TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
