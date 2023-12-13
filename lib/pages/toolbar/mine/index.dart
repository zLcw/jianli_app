import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:jianli_app/binding/bindingAllController.dart';
import 'package:jianli_app/pages/login/login.dart';

class Mine extends StatefulWidget {

  const Mine({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => _MineState();

}

class _MineState extends State<Mine> {

  @override
  Widget build(BuildContext context) {

    return  Scaffold(
      backgroundColor: Colors.blue,
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding:  EdgeInsets.only(left: 40.0.sp,top: 220.0.sp),
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.blue,
                  ),
                  child: Row(
                    children: [
                      CircleAvatar(
                        radius: 50.sp,
                        backgroundImage: const NetworkImage("https://edu-guli-bucket-file.oss-cn-hangzhou.aliyuncs.com/2023/01/12/144111830_file.png"),
                      ),
                      SizedBox(width: 20.w),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "卡卡西",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 24.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Text(
                            "17928325364",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 20.sp,
                            ),
                          ),
                        ],
                      ),
                    ],
                  )
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: FractionallySizedBox(
              child: Container(
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(40.0.sp),
                    topRight: Radius.circular(40.0.sp),
                  ),
                ),
                child: Padding(
                  padding: EdgeInsets.only(top: 10.sp),
                  child: Column(
                    children: [
                      ListTile(
                        title: const Text("我的设备"),
                        horizontalTitleGap: -8.sp,
                        leading: const Icon(Icons.build,color: Color.fromRGBO(43, 76, 126, 1)),
                        trailing: const Icon(Icons.chevron_right,color: Colors.grey),
                        onTap: (){
                          print("我的设备");
                        },
                      ),
                      Divider(
                          height: 1,
                          color: Colors.grey[700]
                      ),
                      ListTile(
                        title: const Text("购物"),
                        horizontalTitleGap: -8.sp,
                        leading: const Icon(Icons.shopping_cart,color: Color.fromRGBO(43, 76, 126, 1)),
                        trailing: const Icon(Icons.chevron_right,color: Colors.grey),
                        onTap: (){
                          print("我的购物");
                        },
                      ),
                      Divider(
                          height: 1,
                          color: Colors.grey[700]
                      ),
                      ListTile(
                        title: const Text("设置"),
                        horizontalTitleGap: -8.sp,
                        leading: const Icon(Icons.settings,color: Color.fromRGBO(43, 76, 126, 1)),
                        trailing: const Icon(Icons.chevron_right,color: Colors.grey),
                        onTap: (){
                          print("我的设置");
                        },
                      ),
                      Divider(
                          height: 1.h,
                          color: Colors.grey[700]
                      ),
                      ListTile(
                        title: const Text("登录"),
                        horizontalTitleGap: -8.sp,
                        leading: const Icon(Icons.login,color: Color.fromRGBO(43, 76, 126, 1)),
                        trailing: const Icon(Icons.chevron_right,color: Colors.grey),
                        onTap: (){
                          Get.to(() => LoginPage(),binding: BingingAllController());
                        },
                      ),
                      Divider(
                          height: 1.h,
                          color: Colors.grey[700]
                      ),
                      ListTile(
                        title: const Text("退出登录"),
                        horizontalTitleGap: -8.sp,
                        leading: const Icon(Icons.logout,color: Color.fromRGBO(43, 76, 126, 1)),
                        trailing: const Icon(Icons.chevron_right,color: Colors.grey),
                        onTap: (){
                          print("我的退出登录");
                        },
                      ),
                      Divider(
                          height: 1.h,
                          color: Colors.grey[700]
                      ),
                    ],
                  ),
                )
              ),
            ),
          ),
        ],
      ),
    );
  }

}