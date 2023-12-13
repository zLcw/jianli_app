import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../controller/loginController.dart';

class LoginPassword extends StatelessWidget {
  final LoginController loginController;

  const LoginPassword({Key? key, required this.loginController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Obx(() => SizedBox(
      width: 700.w,
      child: TextFormField(
        obscureText: !loginController.isPasswordVisible.value,
        initialValue: loginController.password.value,
        decoration: InputDecoration(
          labelText: "密码",
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(20.0.sp),
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 12.0.sp, vertical: 8.0.sp),
          suffixIcon: GestureDetector(
            onTap: () {
              // 处理眼睛图标点击事件，切换密码可见性
              loginController.togglePasswordVisibility();
            },
            child: Icon(
              loginController.isPasswordVisible.value
                  ? Icons.visibility
                  : Icons.visibility_off,
            ),
          ),
        ),
        onChanged: (value){
          loginController.setPassword(value);
        },
      ),
    ));
  }
}
