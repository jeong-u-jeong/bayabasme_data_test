import 'package:flutter/material.dart';
import 'package:bayabasme_data_test/page/diagnosis_area.dart';
import 'package:bayabasme_data_test/page/diagnosis_condition.dart';
import 'package:bayabasme_data_test/page/diagnosis_mbti.dart';
import 'package:bayabasme_data_test/page/step_1_diagnosis.dart';
import 'package:bayabasme_data_test/page/step_2_diagnosis.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

final GoRouter _router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => StepOne(),
    ),

    GoRoute(
      path: '/Sstep2',
      builder: (context, state) => StepTwo(),
    ),

    GoRoute(
      path: '/diagnosisCondition',
      builder: (context, state) => DiagnosisCondition(),
    ),

    GoRoute(
      path: '/diagnosisMbti',
      builder: (context, state) => DiagnosisMbti(),
    ),

    GoRoute(
      path: '/diagnosisArea',
      builder: (context, state) => DiagnosisArea(),
    ),
  ],
);


class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(414, 890),
      builder: (context, child) => MaterialApp.router(
        title: 'bayabas.me',
        debugShowCheckedModeBanner: false,
        routerConfig: _router,
      ),
    );
  }
}