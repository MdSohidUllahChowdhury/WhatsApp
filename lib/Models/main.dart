import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newwhatsapp/Models/home.dart';
void main() {
  runApp((ScreenUtilInit(
      designSize: const Size(360, 660),
      ensureScreenSize: true,
      builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Home(),
      ),
    )));
}
