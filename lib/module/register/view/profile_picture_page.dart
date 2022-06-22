import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'dart:math' as math;

import '../../../libraries/library_images.dart' as image;
import '../../../shared/widgets/app_button.dart';
import '../../../theme/app_theme.dart';

class ProfilePicturePage extends StatefulWidget {
  const ProfilePicturePage({
    Key? key,
  }) : super(key: key);

  @override
  State<ProfilePicturePage> createState() => _ProfilePicturePageState();
}

class _ProfilePicturePageState extends State<ProfilePicturePage> {
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
                        '/registerModule/addressPage/',
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: sizeScreen.height / 20,
                ),
                Text(
                  'Para finalizar, insira uma foto de perfil',
                  style: AppTheme.styles.title900,
                ),
                SizedBox(
                  height: sizeScreen.height / 14,
                ),
                Center(
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    clipBehavior: Clip.none,
                    children: <Widget>[
                      Positioned(
                        top: sizeScreen.height / 10,
                        child: Transform.rotate(
                          angle: -math.pi / 4.0,
                          child: AppButton(
                            gradient: AppTheme.gradients.backgroundButton,
                            sizeWidth: sizeScreen.width / 1.5,
                            sizeHeight: sizeScreen.height / 12,
                          ),
                        ),
                      ),
                      Image.asset(
                        image.profilePicture,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: sizeScreen.height / 50,
                ),
                Center(
                  child: Text(
                    'Selecionar foto de perfil',
                    style: AppTheme.styles.text400,
                  ),
                ),
                SizedBox(
                  height: sizeScreen.height / 10,
                ),
                Center(
                  child: AppButton(
                    textButton: 'Pular esta etapa',
                    sizeWidth: sizeScreen.width / 1.3,
                    sizeHeight: sizeScreen.height / 16,
                    textButtonStyle: AppTheme.styles.text400,
                    onPressed: () {
                      Modular.to.navigate(
                        '/registerModule/finishedProfilePage/',
                      );
                    },
                  ),
                ),
                SizedBox(
                  height: sizeScreen.height / 50,
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
                        '/registerModule/finishedProfilePage/',
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
