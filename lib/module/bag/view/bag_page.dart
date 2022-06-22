import 'package:app_crud/shared/widgets/app_textformfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../shared/widgets/app_button.dart';
import '../../../theme/app_theme.dart';
import '../controller/products_controller.dart';
import '../widgets/products_widget.dart';

class BagPage extends StatelessWidget {
  const BagPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<ProductsControler>();
    final sizeScreen = MediaQuery.of(context).size;
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
          'Sacola',
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
              height: sizeScreen.height / 2.4,
              child: ListView.builder(
                itemCount: controller.products.length,
                itemBuilder: (context, index) {
                  return Dismissible(
                    key: const ValueKey('products'),
                    onDismissed: (direction) {},
                    background: Container(
                      color: Colors.green,
                      child: const Icon(
                        Icons.check_circle,
                        size: 45.0,
                      ),
                    ),
                    secondaryBackground: Container(
                      color: Colors.red,
                      child: const Icon(
                        Icons.delete_forever,
                        size: 45.0,
                      ),
                    ),
                    child: ProductsWidget(
                      imageAsset:
                          controller.products[index]['imageAsset'].toString(),
                      productName:
                          controller.products[index]['productName'].toString(),
                      store: controller.products[index]['store'].toString(),
                      price: controller.products[index]['price'].toString(),
                    ),
                  );
                },
              ),
            ),
            SizedBox(
              height: sizeScreen.height / 30.5,
            ),
            SizedBox(
              height: sizeScreen.height / 10,
              width: sizeScreen.width / 1.10,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    'Cupom de desconto',
                    style: AppTheme.styles.text500,
                  ),
                  AppTextFormField(
                    hintText: 'Insira seu cupom de desconto',
                    labelStyle: AppTheme.styles.text400,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: sizeScreen.height / 15.5,
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
              textButton: 'Pagamento',
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
