import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;
import '../../../shared/widgets/app_button.dart';
import '../../../theme/app_theme.dart';

class FinishedProfilePage extends StatefulWidget {
  const FinishedProfilePage({
    Key? key,
  }) : super(key: key);

  @override
  State<FinishedProfilePage> createState() => _FinishedProfilePageState();
}

class _FinishedProfilePageState extends State<FinishedProfilePage> {
  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        image.mvSmallName,
                      ),
                    ),
                    BackButton(
                      onPressed: () => Modular.to.navigate(
                        '/registerModule/profilePicturePage/',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeScreen.height / 14,
                ),
                Center(
                  child: Image.asset(
                    image.registrationCompleted,
                  ),
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                Center(
                  child: Text(
                    'Seu perfil foi criado\ncom sucesso',
                    style: AppTheme.styles.title900,
                    textAlign: TextAlign.center,
                  ),
                ),
                SizedBox(
                  height: sizeScreen.height / 50,
                ),
                Center(
                  child: Text(
                    'Realize o login com as credenciais inseridas nos',
                    style: AppTheme.styles.text400,
                  ),
                ),
                SizedBox(
                  height: sizeScreen.height / 15,
                ),
                Center(
                  child: AppButton(
                    textButton: 'Entrar',
                    sizeWidth: sizeScreen.width / 1.3,
                    sizeHeight: sizeScreen.height / 16,
                    textButtonStyle: AppTheme.styles.textWhite500,
                    gradient: AppTheme.gradients.backgroundButton,
                    onPressed: () {
                      Modular.to.navigate(
                        '/loginModule/',
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
