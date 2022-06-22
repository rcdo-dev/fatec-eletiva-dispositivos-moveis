import 'package:app_crud/module/products/controller/products_controller.dart';
import 'package:app_crud/module/products/widgets/products_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../../../theme/app_theme.dart';
import '../../../libraries/library_images.dart' as image;

class ProductsPage extends StatelessWidget {
  const ProductsPage({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Modular.get<ProductsControler>();
    final sizeScreen = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppTheme.colors.white,
      appBar: AppBar(
        backgroundColor: AppTheme.colors.white,
        title: Text(
          'Produtos',
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
        child: Padding(
          padding: const EdgeInsets.symmetric(
            horizontal: 20.0,
          ),
          child: Column(
            children: <Widget>[
              SizedBox(
                height: sizeScreen.height / 56,
              ),
              Stack(
                clipBehavior: Clip.none,
                children: <Widget>[
                  SizedBox(
                    height: sizeScreen.height / 15,
                    child: TextFormField(
                      cursorColor: AppTheme.colors.highlight,
                      decoration: InputDecoration(
                        fillColor: Colors.grey[100],
                        filled: true,
                        hintText: 'O que você está procurando?',
                        prefixIcon: Icon(
                          Icons.search,
                          color: AppTheme.colors.highlight,
                        ),
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              30.0,
                            ),
                          ),
                        ),
                        focusedBorder: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                          borderRadius: BorderRadius.all(
                            Radius.circular(
                              30.0,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 294,
                    child: Container(
                      width: sizeScreen.width / 6,
                      height: sizeScreen.height / 15,
                      decoration: const BoxDecoration(
                        color: Colors.deepPurple,
                        shape: BoxShape.circle,
                      ),
                      child: Icon(
                        Icons.menu,
                        color: AppTheme.colors.white,
                        size: 30.0,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: sizeScreen.height / 16,
              ),
              SizedBox(
                height: sizeScreen.height / 1.5,
                child: ListView.builder(
                  itemCount: controller.products.length,
                  itemBuilder: (context, index) {
                    return ProductsWidget(
                      imageAsset:
                          controller.products[index]['imageAsset'].toString(),
                      productName:
                          controller.products[index]['productName'].toString(),
                      store: controller.products[index]['store'].toString(),
                      price: controller.products[index]['price'].toString(),
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
