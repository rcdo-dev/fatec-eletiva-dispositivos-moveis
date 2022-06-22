import 'package:app_crud/module/register/view/address_page.dart';
import 'package:app_crud/module/register/view/personal_data_page.dart';
import 'package:app_crud/module/register/view/profile_picture_page.dart';
import 'package:flutter_modular/flutter_modular.dart';

import 'view/finished_profile_page.dart';
import 'view/register_page.dart';

class RegisterModule extends Module {
  @override
  List<Bind<Object>> get binds => [];

  @override
  List<ModularRoute> get routes => [
        ChildRoute(
          '/',
          child: (context, args) => const RegisterPage(),
        ),
        ChildRoute(
          '/personalDataPage/',
          child: (context, args) => const PersonalDataPage(),
        ),
        ChildRoute(
          '/addressPage/',
          child: (context, args) => const AddressPage(),
        ),
        ChildRoute(
          '/profilePicturePage/',
          child: (context, args) => const ProfilePicturePage(),
        ),
        ChildRoute(
          '/finishedProfilePage/',
          child: (context, args) => const FinishedProfilePage(),
        ),
      ];
}
