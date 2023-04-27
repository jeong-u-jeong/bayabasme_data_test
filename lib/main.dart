import 'package:flutter/material.dart';
import 'package:bayabasme_data_test/page/step_1_diagnosis.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 890),
      builder: (context, child) => MaterialApp(
        title: 'bayabas.me',
        debugShowCheckedModeBanner: false,
        home: StepOne(),
      ),
    );
  }
}