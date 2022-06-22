import 'package:app_crud/shared/widgets/app_button.dart';
import 'package:app_crud/shared/widgets/app_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;
import '../../../theme/app_theme.dart';

class ForgotPasswordPage extends StatelessWidget {
  const ForgotPasswordPage({
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
                      onPressed: () => Modular.to.navigate('/loginModule/'),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeScreen.height / 20,
                ),
                Text(
                  'Esqueceu a senha?',
                  style: AppTheme.styles.title900,
                ),
                SizedBox(
                  height: sizeScreen.height / 20,
                ),
                Text(
                  'Digite seu e-mail abaixo para receber as',
                  style: AppTheme.styles.text500,
                ),
                SizedBox(
                  height: sizeScreen.height / 20,
                ),
                AppTextFormField(
                  labelText: 'E-mail',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu e-mail',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 10,
                ),
                Center(
                  child: AppButton(
                    textButton: 'Recuperar senha',
                    sizeWidth: sizeScreen.width / 1.3,
                    sizeHeight: sizeScreen.height / 16,
                    textButtonStyle: AppTheme.styles.textWhite500,
                    gradient: AppTheme.gradients.backgroundButton,
                    onPressed: () {
                      Modular.to.navigate('/forgotPasswordModule/checkEmail/');
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
