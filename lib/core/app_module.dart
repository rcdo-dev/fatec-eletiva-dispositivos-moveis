import 'package:app_crud/module/bag/bag_module.dart';
import 'package:app_crud/module/forgot_password/forgot_password_module.dart';
import 'package:app_crud/module/home/home_module.dart';
import 'package:app_crud/module/login/login_module.dart';
import 'package:app_crud/module/payment/payment_module.dart';
import 'package:app_crud/module/products/products_module.dart';
import 'package:app_crud/module/profile/profile_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

import '../module/register/register_module.dart';
import '../module/splash/splash_module.dart';

class AppModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ModuleRoute(
          '/',
          module: SplashModule(),
        ),
        ModuleRoute(
          '/loginModule/',
          module: LoginModule(),
        ),
        ModuleRoute(
          '/forgotPasswordModule/',
          module: ForgotPasswordModule(),
        ),
        ModuleRoute(
          '/registerModule/',
          module: RegisterModule(),
        ),
        ModuleRoute(
          '/homeModule/',
          module: HomeModule(),
        ),
        ModuleRoute(
          '/profileModule/',
          module: ProfileModule(),
        ),
        ModuleRoute(
          '/paymentModule/',
          module: PaymentModule(),
        ),
        ModuleRoute(
          '/productsModule',
          module: ProductsModule(),
        ),
        ModuleRoute(
          '/bagModule',
          module: BagModule(),
        ),
      ];
}
