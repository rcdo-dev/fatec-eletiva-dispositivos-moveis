import 'package:app_crud/module/forgot_password/view/check_email_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'view/forgot_password_page.dart';

class ForgotPasswordModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const ForgotPasswordPage(),
        ),
        ChildRoute(
          '/checkEmail/',
          child: (context, args) => const CheckEmailPage(),
        )
      ];
}
