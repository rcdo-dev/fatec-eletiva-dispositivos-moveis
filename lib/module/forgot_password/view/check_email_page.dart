import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;
import '../../../shared/widgets/app_button.dart';
import '../../../theme/app_theme.dart';

class CheckEmailPage extends StatelessWidget {
  const CheckEmailPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final sizeScreen = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(20.0),
          child: SingleChildScrollView(
            child: Column(
              children: <Widget>[
                SizedBox(
                  height: sizeScreen.height / 45,
                ),
                Stack(
                  children: <Widget>[
                    Center(
                      child: Image.asset(
                        image.mvSmallName,
                      ),
                    ),
                    BackButton(
                      onPressed: () => Modular.to.navigate(
                        '/forgotPasswordModule/',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeScreen.height / 10,
                ),
                Image.asset(
                  image.confirmedEmail,
                ),
                Text(
                  'Confira seu e-mail',
                  style: AppTheme.styles.title900,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                Text(
                  'Enviamos as instruções em seu e-mail',
                  style: AppTheme.styles.text500,
                ),
                SizedBox(
                  height: sizeScreen.height / 12,
                ),
                AppButton(
                  textButton: 'Entrar',
                  sizeWidth: sizeScreen.width / 1.3,
                  sizeHeight: sizeScreen.height / 16,
                  textButtonStyle: AppTheme.styles.textWhite500,
                  gradient: AppTheme.gradients.backgroundButton,
                  onPressed: () {
                    Modular.to.navigate('/loginModule/');
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
