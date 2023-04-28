import 'package:bayabasme_data_test/page/diagnosis_area.dart';
import 'package:bayabasme_data_test/page/diagnosis_condition.dart';
import 'package:bayabasme_data_test/page/diagnosis_mbti.dart';
import 'package:bayabasme_data_test/page/step_1_diagnosis.dart';
import 'package:bayabasme_data_test/page/step_2_diagnosis.dart';
import 'package:go_router/go_router.dart';

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
