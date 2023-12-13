import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginCode extends StatefulWidget {
  const LoginCode({super.key});

  @override
  State<LoginCode> createState() => _LoginCodeState();
}

class _LoginCodeState extends State<LoginCode> {
  int countdown = 60;
  bool isCountingDown = false;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          TextField(
            decoration: InputDecoration(
              hintText: '输入验证码',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20.0.sp),
              ),
              suffixIcon: GestureDetector(
                onTap: isCountingDown ? null : startCountdown,
                child: Padding(
                padding: EdgeInsets.only(right: 30.0.sp), // 调整右边距
                  child: Text(isCountingDown ? '$countdown 秒后重新获取' : '获取验证码'),
                ),
              )
            ),
          ),
        ],
      ),
    );
  }

  void startCountdown() {
    setState(() {
      isCountingDown = true;
      countdown = 60;
    });

    const oneSec = Duration(seconds: 1);
    Timer.periodic(oneSec, (Timer timer) {
      if (countdown == 0) {
        setState(() {
          isCountingDown = false;
        });
        timer.cancel();
      } else {
        setState(() {
          countdown--;
        });
      }
    });
  }
}
