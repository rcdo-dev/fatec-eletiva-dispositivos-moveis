import 'package:app_crud/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;
import '../../../shared/widgets/app_textformfield.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({
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
                  height: sizeScreen.height / 50,
                ),
                Image.asset(
                  image.mvSmallName,
                ),
                SizedBox(
                  height: sizeScreen.height / 50,
                ),
                Text(
                  'Bem Vindos de Volta\nSentimos sua Falta',
                  style: AppTheme.styles.title700,
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: sizeScreen.height / 16,
                ),
                AppTextFormField(
                  labelText: 'Email',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu e-mail',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 26,
                ),
                AppTextFormField(
                  labelText: 'Senha',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira senha (apenas numeros)',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 56,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextButton(
                      child: Text(
                        'Cadastre-se',
                        style: AppTheme.styles.text500,
                      ),
                      onPressed: () {
                        Modular.to.navigate(
                          '/registerModule/',
                        );
                      },
                    ),
                    TextButton(
                      child: Text(
                        'Esqueci minha senha',
                        style: AppTheme.styles.text500,
                      ),
                      onPressed: () {
                        Modular.to.navigate(
                          '/forgotPasswordModule/',
                        );
                      },
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeScreen.height / 86,
                ),
                ElevatedButton(
                  onPressed: () {
                    Modular.to.navigate(
                      '/homeModule/',
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: AppTheme.colors.secondary100,
                    fixedSize: Size(
                      sizeScreen.width / 1.3,
                      sizeScreen.height / 16,
                    ),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text(
                    'Continuar',
                  ),
                ),
                SizedBox(
                  height: sizeScreen.height / 56,
                ),
                Image.asset(
                  image.divisorLinha,
                ),
                SizedBox(
                  height: sizeScreen.height / 56,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Image.asset(
                      image.googleIcon,
                    ),
                    Image.asset(
                      image.facebookIcon,
                    ),
                    Image.asset(
                      image.appleIcon,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
