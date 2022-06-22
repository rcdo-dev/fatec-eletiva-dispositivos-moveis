import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_textformfield.dart';
import '../../../theme/app_theme.dart';

class PersonalDataPage extends StatefulWidget {
  const PersonalDataPage({
    Key? key,
  }) : super(key: key);

  @override
  State<PersonalDataPage> createState() => _PersonalDataPageState();
}

class _PersonalDataPageState extends State<PersonalDataPage> {
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
                      onPressed: () => Modular.to.navigate('/registerModule/'),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeScreen.height / 20,
                ),
                Text(
                  'Insira seus dados pessoais',
                  style: AppTheme.styles.title900,
                ),
                SizedBox(
                  height: sizeScreen.height / 20,
                ),
                AppTextFormField(
                  labelText: 'Nome *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu nome',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                AppTextFormField(
                  labelText: 'Sobrenome *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu sobrenome',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                AppTextFormField(
                  labelText: 'Celular *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu celular',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                AppTextFormField(
                  labelText: 'Telefone *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu telefone',
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
                      Modular.to.navigate('/registerModule/addressPage/');
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
