import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginLogo extends StatelessWidget {
  const LoginLogo({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: 100.0.sp),
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              backgroundImage: const NetworkImage("https://edu-guli-bucket-file.oss-cn-hangzhou.aliyuncs.com/2023/01/12/144111830_file.png"),
              radius: 80.0.sp,
            )
          ],
        ),
      ),
    );
  }
}
