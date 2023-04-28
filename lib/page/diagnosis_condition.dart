import 'package:bayabasme_data_test/global_assets/global_style.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:bayabasme_data_test/responsive.dart';
import 'package:bayabasme_data_test/services/api_service.dart';
import 'package:bayabasme_data_test/models/diagnosis_condition_model.dart';

class DiagnosisCondition extends StatefulWidget {
  const DiagnosisCondition({Key? key}) : super(key: key);

  @override
  State<DiagnosisCondition> createState() => _DiagnosisConditionState();
}

class _DiagnosisConditionState extends State<DiagnosisCondition> {
  PageController pageController = PageController();

  bool first = false;
  bool second = false;
  bool third = false;
  bool fourth = false;
  bool fifth = false;

  List<Datum> _datum = <Datum>[];
  bool loading = false;

  @override
  void initState() {
    super.initState();
    ApiServices.getQuestion().then((value) {
      setState(() {
        _datum = value;
        loading = true;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalStyle.white,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Column(
            children: [
              // --------------Header-----------------
              Container(
                height: isMobile ? 54 : 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: GlobalStyle.background_gray,
                ),
                child: Center(
                  child: Text(
                    '내 두피상태 진단',
                    style: TextStyle(
                        fontSize: isMobile ? 18.sp : 24,
                        color: GlobalStyle.dark),
                  ),
                ),
              ),
              // --------------Contents----------------
              Column(
                children: [
                  Container(
                    padding:
                        EdgeInsets.symmetric(horizontal: isMobile ? 20.w : 0),
                    margin: EdgeInsets.only(top: isMobile ? 110.h : 150),
                    width: isMobile ? double.infinity : 1024,
                    height: isMobile ? 500.h : 500.h,
                    child: PageView.builder(
                        controller: pageController,
                        itemCount: _datum.length,
                        itemBuilder: (context, index) {
                          Datum datum = _datum[index];
                          return Column(
                            children: [
                              Text(
                                datum.question, //질문
                                style: TextStyle(
                                    fontSize: isMobile ? 17.sp : 22,
                                    color: GlobalStyle.dark,
                                    fontWeight: FontWeight.w600),
                              ),
                              Container(
                                height: isMobile ? 26.h : 20,
                              ),
                              Text(
                                datum.questionExplanation, //서브 질문
                                style: TextStyle(
                                    fontSize: isMobile ? 17.sp : 22,
                                    color: GlobalStyle.dark),
                                textAlign: TextAlign.center,
                              ),
                              Container(
                                height: isMobile ? 100.h : 130,
                              ),
                              //체크박스
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceAround,
                                children: [
                                  CheckCircular(
                                    checktap: () {
                                      setState(() {
                                        first = !first;
                                        second = false;
                                        third = false;
                                        fourth = false;
                                        fifth = false;
                                      });
                                    },
                                    color: first ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                    text: '전혀 아니에요',
                                  ),
                                  CheckCircular(
                                    checktap: () {
                                      setState(() {
                                        second = !second;
                                        first = false;
                                        third = false;
                                        fourth = false;
                                        fifth = false;
                                      });
                                    },
                                    color: second ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                    text: '아니에요',
                                  ),
                                  CheckCircular(
                                    checktap: () {
                                      setState(() {
                                        third = !third;
                                        first = false;
                                        second = false;
                                        fourth = false;
                                        fifth = false;
                                      });
                                    },
                                    color: third ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                    text: '보통',
                                  ),
                                  CheckCircular(
                                    checktap: () {
                                      setState(() {
                                        fourth = !fourth;
                                        first = false;
                                        second = false;
                                        third = false;
                                        fifth = false;
                                      });
                                    },
                                    color: fourth ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                    text: '그래요',
                                  ),
                                  CheckCircular(
                                    checktap: () {
                                      setState(() {
                                        fifth = !fifth;
                                        first = false;
                                        second = false;
                                        third = false;
                                        fourth = false;
                                      });
                                    },
                                    color: fifth ? GlobalStyle.light_purple : GlobalStyle.background_gray,
                                    text: '매우 그래요',
                                  ),
                                ],
                              )
                            ],
                          );
                        }),
                  ),
                  // --------------다음/이전 페이지 버튼---------------
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      BtnDiagnosis(
                          onTap: () {
                            pageController.previousPage(
                                duration: Duration(milliseconds: 500),
                                curve: Curves.easeIn);
                          },
                          color: GlobalStyle.gray,
                          text: '이전'),
                      Container(
                        width: 20.w,
                      ),
                      BtnDiagnosis(
                        onTap: () {
                          pageController.nextPage(
                              duration: Duration(milliseconds: 500),
                              curve: Curves.easeIn);
                        },
                        color: first || second || third || fourth || fifth
                            ? GlobalStyle.green
                            : GlobalStyle.gray,
                        text: '다음',
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

//--------체크박스 위젯----------
class CheckCircular extends StatefulWidget {
  final GestureTapCallback checktap;
  final Color color;
  final String text;

  const CheckCircular({
    super.key,
    required this.checktap,
    required this.color,
    required this.text,
  });

  @override
  State<CheckCircular> createState() => _CheckCircularState();
}

class _CheckCircularState extends State<CheckCircular> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: widget.checktap,
          child: Container(
            width: isMobile ? 52.w : 70,
            height: isMobile ? 52.w : 70,
            decoration: BoxDecoration(
                border: Border.all(
                  color: widget.color,
                  width: isMobile ? 15.w : 18,
                ),
                borderRadius: BorderRadius.circular(100.r)),
          ),
        ),
        Container(
          height: isMobile ? 12.h : 12,
        ),
        Text(
          widget.text,
          style: TextStyle(
              color: GlobalStyle.gray, fontSize: isMobile ? 11.sp : 16),
        )
      ],
    );
  }
}


// --------------다음/이전 페이지 버튼---------------
class BtnDiagnosis extends StatelessWidget {
  final GestureTapCallback onTap;
  final Color color;
  final String text;

  const BtnDiagnosis({
    Key? key,
    required this.onTap,
    required this.color,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.only(
          bottom: isMobile ? 50.h : 150,
        ),
        width: isMobile ? 100.w : 160,
        height: isMobile ? 40.h : 48,
        decoration: BoxDecoration(
            color: color,
            borderRadius: BorderRadius.circular(isMobile ? 3.r : 5)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
                color: GlobalStyle.white, fontSize: isMobile ? 14.sp : 18),
          ),
        ),
      ),
    );
  }
}



// Widget _five_votes(BuildContext context){
//   List<int> scoreList = List.generate(5, (index) => index);
//
//   String _indexType(int index){
//     switch(index){
//       case 0: return '전혀 아니에요';
//       case 1: return '아니에요';
//       case 2: return '보통';
//       case 3: return '그래요';
//       case 4: return '매우 그래요';
//       default: return '';
//     }
//   }
//   bool ontapCheck = false;
//   return Row(
//     crossAxisAlignment: CrossAxisAlignment.start,
//     children: [
//       for(int index = 0; index < scoreList.length; index++)
//         Expanded(
//             child: GestureDetector(
//               onTap: (){
//                 ontapCheck == !ontapCheck;
//               },
//               child: Column(
//                 children: [
//                   Container(
//                     width: isMobile ? 52.w : 70,
//                     height: isMobile ? 52.w : 70,
//                     decoration: BoxDecoration(
//                         border: Border.all(
//                           color: ontapCheck ? Colors.pinkAccent : GlobalStyle.background_gray,
//                           width: isMobile ? 15.w : 18,
//                         ),
//                         borderRadius: BorderRadius.circular(100.r)),
//                   ),
//                   Container(
//                     height: isMobile ? 12.h : 12,
//                   ),
//                   Text(
//                       _indexType(index),
//                     style: TextStyle(
//                         color: GlobalStyle.gray, fontSize: isMobile ? 11.sp : 16),
//                   )
//                 ],
//               ),
//             )
//         )
//     ],
//   );
// }