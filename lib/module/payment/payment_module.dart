import 'package:flutter_modular/flutter_modular.dart';

import 'view/payment_page.dart';

class PaymentModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const PaymentPage(),
        ),
      ];
}
