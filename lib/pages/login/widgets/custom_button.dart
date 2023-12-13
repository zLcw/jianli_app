import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String text;
  final Color buttonColor;
  final int width;

  const CustomButton({
    Key? key,
    required this.width,
    required this.onPressed,
    required this.text,
    required this.buttonColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width.sp,
      child: FilledButton(
        style: ElevatedButton.styleFrom(
          primary: buttonColor,
        ),
        onPressed: onPressed,
        child: Text(text),
      ),
    );
  }
}
