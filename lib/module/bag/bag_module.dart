import 'package:flutter_modular/flutter_modular.dart';

import 'controller/products_controller.dart';
import 'view/bag_page.dart';

class BagModule extends Module {
  @override
  List<Bind<Object>> get binds => [
        Bind.factory((i) => ProductsControler()),
      ];

  @override
  List<ModularRoute> get routes => [
        ChildRoute('/', child: (context, args) => const BagPage()),
      ];
}
