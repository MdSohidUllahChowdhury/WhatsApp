import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:newwhatsapp/home.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  ScreenUtilInit(
     builder: (context, child) => const MaterialApp(
        debugShowCheckedModeBanner: false,  
        home: Home(),
      ),
      designSize: const Size(360, 640),
      ensureScreenSize: true,
    );
  }
}
