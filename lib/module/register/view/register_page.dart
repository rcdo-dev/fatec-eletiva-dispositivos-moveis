import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_textformfield.dart';
import '../../../theme/app_theme.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({
    Key? key,
  }) : super(key: key);

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
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
                  'Insira os dados da sua conta',
                  style: AppTheme.styles.title900,
                ),
                SizedBox(
                  height: sizeScreen.height / 20,
                ),
                AppTextFormField(
                  labelText: 'E-mail *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu e-mail',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                AppTextFormField(
                  labelText: 'Nome de usuário *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu nome de usuário',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                AppTextFormField(
                  labelText: 'Senha *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira sua senha',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                AppTextFormField(
                  labelText: 'Confirme a senha *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira sua senha',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 8,
                ),
                Center(
                  child: AppButton(
                    textButton: 'Continuar',
                    sizeWidth: sizeScreen.width / 1.3,
                    sizeHeight: sizeScreen.height / 16,
                    textButtonStyle: AppTheme.styles.textWhite500,
                    gradient: AppTheme.gradients.backgroundButton,
                    onPressed: () {
                      Modular.to.navigate('/registerModule/personalDataPage/');
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
