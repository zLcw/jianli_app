import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jianli_app/controller/loginController.dart';
import 'package:jianli_app/pages/login/widgets/custom_button.dart';
import 'package:jianli_app/pages/login/widgets/login_code.dart';
import 'package:jianli_app/pages/login/widgets/login_logo.dart';
import 'package:jianli_app/pages/login/widgets/login_password.dart';
import 'package:jianli_app/pages/login/widgets/login_username.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {

   LoginController loginController = Get.find<LoginController>();

   return Obx(
      () => Scaffold(
        appBar: AppBar(),
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.sp),
          child: Column(
            children: [
              const LoginLogo(),
              loginController.codeLogin.value ?
                LoginUserName(loginController: loginController,label: "手机号"):
                LoginUserName(loginController: loginController,label: "账号"),
              SizedBox(height: 40.h),
              //LoginPassword(loginController: loginController),
              LoginCode(),
              SizedBox(height: 20.h),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  TextButton(onPressed: (){
                    loginController.isCodeLogin();
                  }, child: const Text("手机验证码登录")),
                  const Spacer(),
                  TextButton(onPressed: (){}, child: const Text("忘记密码")),
                ],
              ),
              CustomButton(
                onPressed: () {
                  if (loginController.checkUserName()){
                    loginController.userNameError("用户名不能为空");
                  }
                  if (loginController.userNameError.isEmpty) {
                    loginController.loginWithUserName();
                  }else{
                    Get.dialog(
                      AlertDialog(
                        title: const Text("提示"),
                        content: Text(loginController.userNameError.value),
                        actions: [
                          TextButton(
                            onPressed: () {
                              Get.back(); // 关闭弹窗
                            },
                            child: const Text("关闭"),
                          ),
                        ],
                      ),
                    );
                  }
                },
                text: "登录",
                buttonColor: Colors.blue, width: 500,
              ),
              CustomButton(
                onPressed: () {
                  // 注册操作
                },
                text: "注册",
                buttonColor: Colors.grey,
                width: 500,
              ),
              Row(
                children: [
                  Checkbox(
                      value: loginController.isCheck.value,
                      onChanged: (value) {
                        loginController.setIsCheck(value!);
                      }
                  ),
                  RichText(
                      text: TextSpan(
                          text: "已阅读并同意",
                          style: TextStyle(color: Colors.black87,fontSize: 22.sp),
                          children: [
                            TextSpan(
                                text: "用户协议",
                                style: TextStyle(color: Colors.grey.shade600,fontWeight: FontWeight.bold)
                            )
                          ]
                      )
                  )
                ],
              )
            ],
          ),
        ),
      )
    );
  }
}

