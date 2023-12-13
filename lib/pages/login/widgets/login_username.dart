import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';


import '../../../controller/loginController.dart';

class LoginUserName extends StatelessWidget {
  final LoginController loginController;
  final String label;

  const LoginUserName({Key? key, required this.loginController,required this.label}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 700.sp,
      child: TextFormField(
        initialValue: loginController.userName.value,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        decoration: InputDecoration(
          labelText: label,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(20.0.sp)
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 16.0.sp, vertical: 12.0.sp),
        ),
        onChanged: (value){
          loginController.resetUserNameError();
          loginController.setUserName(value);
        },
      ),
    );
  }
}
