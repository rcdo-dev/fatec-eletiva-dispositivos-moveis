import 'package:app_crud/module/products/controller/products_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'view/products_page.dart';

class ProductsModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => ProductsControler()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const ProductsPage()),
      ];
}
