import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;
import '../../../shared/widgets/app_button.dart';
import '../../../shared/widgets/app_textformfield.dart';
import '../../../theme/app_theme.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({
    Key? key,
  }) : super(key: key);

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
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
                        '/registerModule/personalDataPage/',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeScreen.height / 20,
                ),
                Text(
                  'Para começar insira seu endereço',
                  style: AppTheme.styles.title900,
                ),
                SizedBox(
                  height: sizeScreen.height / 20,
                ),
                AppTextFormField(
                  labelText: 'CEP *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu CEP',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                AppTextFormField(
                  labelText: 'Endereço *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu endereço',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                AppTextFormField(
                  labelText: 'Número *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu número',
                  cursorColor: AppTheme.colors.text,
                ),
                SizedBox(
                  height: sizeScreen.height / 40,
                ),
                AppTextFormField(
                  labelText: 'Complemento *',
                  labelStyle: AppTheme.styles.text500,
                  hintText: 'Insira seu complemento',
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
                      Modular.to.navigate(
                        '/registerModule/profilePicturePage/',
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
