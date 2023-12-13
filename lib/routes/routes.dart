import 'package:get/get.dart';
import 'package:jianli_app/binding/bindingAllController.dart';

import '../pages/login/login.dart';
import '../pages/toolbar/index.dart';

List<GetPage<dynamic>> pages = [
  // toolbar
  GetPage(name: '/', page: () => const Toolbar()),
  GetPage(
      name: "/login",
      page: () => const LoginPage(),
    binding: BingingAllController()
  )
];