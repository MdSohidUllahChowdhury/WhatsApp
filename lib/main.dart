import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:newwhatsapp/Controllers/navigation_bar.dart';
void main() {
  runApp((ScreenUtilInit(
      designSize: const Size(360, 660),
      ensureScreenSize: true,
      builder: (context, child) => const GetMaterialApp(
        debugShowCheckedModeBanner: false,
        home: NavigationBarOwn(),
      ),
    )));
}
