import 'package:app_crud/shared/widgets/app_button.dart';
import 'package:app_crud/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;

class PaymentPage extends StatelessWidget {
  const PaymentPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: AppBar(
        leading: GestureDetector(
          onTap: () {
            Modular.to.navigate(
              '/homeModule/',
            );
          },
          child: Icon(
            Icons.arrow_back_ios_new_outlined,
            color: AppTheme.colors.text,
          ),
        ),
        title: Text(
          'Pagamento',
          style: AppTheme.styles.title700,
        ),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: AppTheme.colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 130,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'MacBook Air 13"',
                        style: AppTheme.styles.text400,
                      ),
                      Text(
                        'R\$7.999,99',
                        style: AppTheme.styles.text400,
                      ),
                    ],
                  ),
                  Divider(
                    color: AppTheme.colors.primary,
                    thickness: 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'Intel Core I7 9700KF',
                        style: AppTheme.styles.text400,
                      ),
                      Text(
                        'R\$1.799,99',
                        style: AppTheme.styles.text400,
                      ),
                    ],
                  ),
                  Divider(
                    color: AppTheme.colors.primary,
                    thickness: 0.1,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        'PC Gamer EasyPC',
                        style: AppTheme.styles.text400,
                      ),
                      Text(
                        'R\$3.599,99',
                        style: AppTheme.styles.text400,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 120.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26.0,
              ),
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Envio Para',
                      style: AppTheme.styles.title500,
                    ),
                    const SizedBox(
                      height: 13.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Avenida Brigadeiro Luís Antonio, 2050\nBela Vista - São Paulo - SP',
                          style: AppTheme.styles.text400,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Alterar',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: AppTheme.colors.primary,
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26.0,
              ),
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      'Pagamento',
                      style: AppTheme.styles.title500,
                    ),
                    const SizedBox(
                      height: 13.0,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Image.asset(
                          image.mastercardIcon,
                          height: 55,
                          width: 55,
                        ),
                        Text(
                          'XXXX XXXX XXXX 5456\nMastercard - 04/28',
                          style: AppTheme.styles.text400,
                        ),
                        TextButton(
                          onPressed: () {},
                          child: const Text(
                            'Alterar',
                            style: TextStyle(
                              color: Colors.deepPurple,
                              fontWeight: FontWeight.w400,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Divider(
              color: AppTheme.colors.primary,
              thickness: 0.5,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 26.0,
              ),
              child: SizedBox(
                height: 100,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Subtotal',
                          style: AppTheme.styles.text400,
                        ),
                        Text(
                          'R\$13.398,98',
                          style: AppTheme.styles.text400,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Frete',
                          style: AppTheme.styles.text400,
                        ),
                        Text(
                          'Gratis',
                          style: AppTheme.styles.text400,
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Text(
                          'Total',
                          style: AppTheme.styles.title700,
                        ),
                        Text(
                          'R\$13.398,98',
                          style: AppTheme.styles.title700,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            AppButton(
              textButton: 'Comprar',
              textButtonStyle: AppTheme.styles.textWhite500,
              gradient: AppTheme.gradients.backgroundButton,
              sizeWidth: 320,
              sizeHeight: 55,
              onPressed: () {},
            ),
          ],
        ),
      ),
    );
  }
}
