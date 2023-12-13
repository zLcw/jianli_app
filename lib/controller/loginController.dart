
import 'package:get/get.dart';

// 登录页控制器
class LoginController extends GetxController{
  final RxString userName = "".obs;
  final RxString password = "".obs;
  final RxBool isCheck = false.obs;
  // 用户名错误信息
  final RxString userNameError = ''.obs;
  // 是否显示密码的可观察变量
  final RxBool isPasswordVisible = false.obs;
  // 是否使用验证码登录
  final RxBool codeLogin = false.obs;

  // 设置用户名
  void setUserName(String value){
    userName.value = value;
  }

  // 设置密码
  void setPassword(String value){
    password.value = value;
  }

  // 是否同意用户协议
  void setIsCheck(bool? value){
    isCheck.value = value!;
  }

  // 切换密码可见性的方法
  void togglePasswordVisibility() {
    isPasswordVisible.value = !isPasswordVisible.value;
  }

  // 检查账号合法性
  bool checkUserName() {
    return userName.value.isEmpty;
  }

  // 设置用户名错误信息
  void setUserNameError(String error) {
    userNameError.value = error;
  }

  // 重置用户名错误信息
  void resetUserNameError() {
    userNameError.value = '';
  }

  // 检查密码合法性
  bool checkPassword() {
    return password.value.length >= 6;
  }

  void isCodeLogin(){
    codeLogin.value = !codeLogin.value;
  }

  // 用户账号登录
  Future<void> loginWithUserName() async {
    Get.snackbar("登录成功", userName.value);
  }
}