import 'package:app_crud/theme/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../libraries/library_images.dart' as image;
import '../widgets/carousel_products_widget.dart';
import '../widgets/product_widget.dart';
import '../widgets/show_products_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({
    Key? key,
  }) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    // Size sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppTheme.colors.white,
        title: Text(
          'Home',
          style: AppTheme.styles.title900,
        ),
        actions: <Widget>[
          GestureDetector(
            onTap: () {
              Modular.to.navigate(
                '/bagModule/',
              );
            },
            child: Image.asset(
              image.bag,
            ),
          )
        ],
        elevation: 0.0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Image.asset(
              image.promotion,
              width: double.infinity,
              fit: BoxFit.fill,
            ),
            const SizedBox(
              height: 20.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Column(
                children: <Widget>[
                  ShowProductsWidget(
                    titleProducts: 'Notebooks',
                    carousel: CarouselProductsWidget(
                      items: List.generate(
                        6,
                        (index) => const ProductWidget(
                          imageAsset: image.notebook,
                          productName: 'MacBook Air de 13"',
                          store: 'Loja Sistech Eletronicos',
                          price: 'R\$7.999,99',
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  ShowProductsWidget(
                    titleProducts: 'Hardware',
                    carousel: CarouselProductsWidget(
                      items: List.generate(
                        6,
                        (index) => const ProductWidget(
                          imageAsset: image.hardware,
                          productName: 'AMD Ryzen 7 5800X',
                          store: 'Loja Eletrosystem',
                          price: 'R\$2.880,00',
                        ),
                      ),
                    ),
                  ),
                  ShowProductsWidget(
                    titleProducts: 'Periféricos',
                    carousel: CarouselProductsWidget(
                      items: List.generate(
                        6,
                        (index) => const ProductWidget(
                          imageAsset: image.perifericos,
                          productName: 'Headset Hyperx',
                          store: 'Loja Sistech Eletronicos',
                          price: 'R\$299,99',
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            gradient: AppTheme.gradients.backgroundButton,
            border: Border.all(
              color: AppTheme.colors.highlight,
            ),
            borderRadius: BorderRadius.circular(30.0),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              GestureDetector(
                onTap: () {
                  Modular.to.navigate(
                    '/homeModule/',
                  );
                },
                child: Image.asset(
                  image.menuHome,
                ),
              ),
              GestureDetector(
                onTap: () => Modular.to.navigate(
                  '/productsModule/',
                ),
                child: Image.asset(
                  image.menuProdutos,
                ),
              ),
              GestureDetector(
                onTap: () => Modular.to.navigate(
                  '/paymentModule/',
                ),
                child: Image.asset(
                  image.menuPagamentos,
                ),
              ),
              GestureDetector(
                onTap: () => Modular.to.navigate(
                  '/profileModule/',
                ),
                child: Image.asset(
                  image.menuPerfil,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
