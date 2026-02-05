import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:ping/controller/navigation_bar.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  runApp((ScreenUtilInit(
    designSize: const Size(360, 660),
    ensureScreenSize: true,
    builder: (context, child) => GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const NavigationBarOwn(),
      theme:
          ThemeData(scaffoldBackgroundColor: Colors.white, useMaterial3: true),
    ),
  )));
}
