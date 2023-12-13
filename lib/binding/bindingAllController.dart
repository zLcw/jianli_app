
import 'package:get/get.dart';
import 'package:jianli_app/controller/loginController.dart';

/// 依赖管理 管理所有的controller
class BingingAllController implements Bindings{
  @override
  void dependencies() {
    // 登录 controller
    Get.lazyPut<LoginController>(() => LoginController());
  }

}