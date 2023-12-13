import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jianli_app/routes/routes.dart';
import 'package:jianli_app/binding/bindingAllController.dart';

Future<void> main() async {
  runApp(ScreenUtilInit(
    builder: (BuildContext context, Widget? child) {
      // 这里可以添加一些全局的初始化逻辑，如果需要的话
      ScreenUtil.init(
        context,
        designSize: const Size(750, 1334)
      );
      return child!;
    },
    child: GetMaterialApp(
      debugShowCheckedModeBanner: false,
      // 全局绑定 GetController
      initialBinding: BingingAllController(),
      title: "监理app",
      initialRoute: "/",
      getPages: pages,
      builder: (context, child) {
        return MediaQuery(
          // 全局设置字体，使字体不受型号变化而变化
          data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
          child: child!,
        );
      },
    ),
  ));
}
