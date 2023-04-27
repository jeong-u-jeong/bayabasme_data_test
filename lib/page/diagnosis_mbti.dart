import 'package:bayabasme_data_test/global_assets/global_style.dart';
import 'package:bayabasme_data_test/page/diagnosis_condition.dart';
import 'package:bayabasme_data_test/responsive.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiagnosisMbti extends StatefulWidget {
  const DiagnosisMbti({Key? key}) : super(key: key);

  @override
  State<DiagnosisMbti> createState() => _DiagnosisMbtiState();
}

class _DiagnosisMbtiState extends State<DiagnosisMbti> {
  bool first = false;
  bool second = false;
  bool third = false;
  bool fourth = false;
  bool fifth = false;

  List<String>contentsList = [
    '밤 10시 이후에 취침해요.',
    '자기 전보다는 주로 아침에 머리를 감아요.',
    '1년에 3회 이상 염색, 파마 등의 헤어 시술을 해요.',
    '인스턴트 음식을 즐겨 먹어요.',
    '뜨거운 물로 샤워하는 것을 좋아해요.',
    '머리를 자주 묶어요.',
    '주 2회 이상 술을 마셔요.',
    '교대 근무를 해요.',
    '물보다는 커피, 차, 탄산 등의 음료를 즐겨 마셔요.',
    '운동을 거의 하지 않아요.',
    '남의 눈치를 많이 보는 편이에요.',
    '모르는 사람이 말을 걸면 불편해요.',
    '편두통 혹은 두통이 있어요.',
    '예전에 동전 모양으로 머리가 빠진 적이 있거나 현재 원형탈모가 있어요.',
    '성격이 예민해서 스트레스를 잘 받아요.'
        '해야 할 일을 감당 못할 때가 많아요.',
    '쉽게 잠들지 못하고 숙면을 취하지 못해요.',
    '어깨 승모근에 곰 한마리가 있는 듯 무거워요.',
    '스트레스를 받으면 많이 먹거나 자극적인 음식이 먹고 싶어요.',
    '걱정이 많고 쉽게 화를 내요.',
    '할아버지 혹은 아버지가 대머리여서 어릴 때 부터 걱정이 있었어요.',
    '아토피가 있어서 피부가 가렵고 환절기에는 더 불편해요.',
    '머리에서 떨어지는 비듬 때문에 어두운 색 상의는 피하게 돼요.',
    '발이 차서 잘 때는 수면양말을 꼭 착용해요.',
    '수술이나 질병으로 인해 약을 복용했거나 현재 복용 중이에요.',
    '야식을 먹고 난 다음날이면 얼굴이 호빵맨이 돼요.',
    '수술이나 질병으로 인해 약을 복용했거나 현재 복용 중이에요.',
    '특정 음식물에 알레르기, 두드러기 등의 거부반응이 있어요.',
    '다이어트 후 급격한 체중변화를 경험한 적이 있어요.',
    '출산한 경험이 있어요.',
    '갱년기 증상이 있어요.',
    '비가 오거나 습한 날씨에는 머리 손질이 어려워요.',
    '머리카락이 하루에 60개 이상 빠지는 거 같아요.',
    '미용사 혹은 지인들이 두피가 붉다고 한 적이 있어요.',
    '미용실에서 두피를 살짝 건드리기만 해도 아프거나 자극이 느껴져요.',
    '정수리나 뒷목에서 열이 올라오는 느낌이 들어요.',
    '맵거나 뜨거운 음식을 먹은 것도 아닌데 두피에서 땀이 나요.',
    '누가 머리카락을 만지거나 정수리에 손을 대면 부담스러워요.',
    '자고 일어나보면 두피를 긁어서 생긴 딱지가 손톱 사이에 끼어있거나 두피에서 피가 난 흔적이 있어요.',
    '거울을 볼 때면 이마가 점점 넓어지는 거 같고 정수리가 휑해보인다는 말을 가끔 들어요.',
    '샴푸를 하루라도 안하면 두피에서 냄새가 나고 기름기가 많아져요.',
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalStyle.white,
      body: SingleChildScrollView(
        child: Responsive(
          mobile: SafeArea(
            child: Column(
              children: [
                // --------------Header-----------------
                Container(
                  width: double.infinity,
                  height: 54,
                  color: GlobalStyle.background_gray,
                  child: Center(
                    child: Text('탈모 MBTI',
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: GlobalStyle.dark
                      ),
                    ),
                  ),
                ),
                // --------------Contents----------------
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      // 질문
                      Container(
                        padding: EdgeInsets.only(top: 160.h),
                        child: Column(
                          children: [
                            Text(contentsList[1], //질문
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: GlobalStyle.dark,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Container(height: 130.h,),
                            //체크박스
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
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
                                    color: first
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
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
                                    color: second
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
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
                                    color: third
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
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
                                    color: fourth
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
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
                                    color: fifth
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
                                    text: '매우 그래요',
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      // --------------다음/이전 페이지 버튼---------------
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 180.h,bottom: 50.h,),
                          width: 100.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: first || second || third || fourth ||
                                  fifth ? GlobalStyle.green : GlobalStyle
                                  .gray,
                              borderRadius: BorderRadius.circular(3.r)
                          ),
                          child: Center(
                            child: Text('다음',
                              style: TextStyle(
                                  color: GlobalStyle.white,
                                  fontSize: 14.sp
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          tablet: SafeArea(
            child: Column(
              children: [
                // --------------Header-----------------
                Container(
                  width: double.infinity,
                  height: 54,
                  color: GlobalStyle.background_gray,
                  child: Center(
                    child: Text('탈모 MBTI',
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: GlobalStyle.dark
                      ),
                    ),
                  ),
                ),
                // --------------Contents----------------
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    children: [
                      // 질문
                      Container(
                        padding: EdgeInsets.only(top: 160.h),
                        child: Column(
                          children: [
                            Text(contentsList[1], //질문
                              style: TextStyle(
                                  fontSize: 17.sp,
                                  color: GlobalStyle.dark,
                                  fontWeight: FontWeight.w600
                              ),
                            ),
                            Container(height: 130.h,),
                            //체크박스
                            Container(
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment
                                    .spaceAround,
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
                                    color: first
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
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
                                    color: second
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
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
                                    color: third
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
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
                                    color: fourth
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
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
                                    color: fifth
                                        ? GlobalStyle.light_purple
                                        : GlobalStyle.background_gray,
                                    text: '매우 그래요',
                                  ),
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      // --------------다음/이전 페이지 버튼---------------
                      GestureDetector(
                        onTap: () {},
                        child: Container(
                          margin: EdgeInsets.only(top: 180.h,bottom: 50.h,),
                          width: 100.w,
                          height: 40.h,
                          decoration: BoxDecoration(
                              color: first || second || third || fourth ||
                                  fifth ? GlobalStyle.green : GlobalStyle
                                  .gray,
                              borderRadius: BorderRadius.circular(3.r)
                          ),
                          child: Center(
                            child: Text('다음',
                              style: TextStyle(
                                  color: GlobalStyle.white,
                                  fontSize: 14.sp
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          smallDesktop: Column(
            children: [
              // --------------Header-----------------
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: GlobalStyle.background_gray,
                ),
                child: const Center(
                  child: Text(
                    '탈모 MBTI',
                    style: TextStyle(
                        fontSize: 24,
                        color: GlobalStyle.dark
                    ),
                  ),
                ),
              ),
              // --------------Contents----------------
              Column(
                children: [
                  //질문
                  Container(
                    margin: const EdgeInsets.only(top: 150),
                    width: 1024,
                    child: Column(
                      children: [
                        Text(contentsList[0], //질문
                          style: const TextStyle(
                              fontSize: 22,
                              color: GlobalStyle.dark,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Container(height: 150,),
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
                              color: first
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
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
                              color: second
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
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
                              color: third
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
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
                              color: fourth
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
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
                              color: fifth
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
                              text: '매우 그래요',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // --------------다음/이전 페이지 버튼---------------
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(top: 220, bottom: 50,),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          color: first || second || third || fourth || fifth
                              ? GlobalStyle.green
                              : GlobalStyle.gray,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: const Center(
                        child: Text('다음',
                          style: TextStyle(
                              color: GlobalStyle.white,
                              fontSize: 18
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
          largeDesktop: Column(
            children: [
              // --------------Header-----------------
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: GlobalStyle.background_gray,
                ),
                child: const Center(
                  child: Text(
                    '탈모 MBTI',
                    style: TextStyle(
                        fontSize: 24,
                        color: GlobalStyle.dark
                    ),
                  ),
                ),
              ),
              // --------------Contents----------------
              Column(
                children: [
                  //질문
                  Container(
                    margin: const EdgeInsets.only(top: 150),
                    width: 1024,
                    child: Column(
                      children: [
                        Text(contentsList[0], //질문
                          style: const TextStyle(
                              fontSize: 22,
                              color: GlobalStyle.dark,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                        Container(height: 150,),
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
                              color: first
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
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
                              color: second
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
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
                              color: third
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
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
                              color: fourth
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
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
                              color: fifth
                                  ? GlobalStyle.light_purple
                                  : GlobalStyle.background_gray,
                              text: '매우 그래요',
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  // --------------다음/이전 페이지 버튼---------------
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(top: 220, bottom: 50,),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          color: first || second || third || fourth || fifth
                              ? GlobalStyle.green
                              : GlobalStyle.gray,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: const Center(
                        child: Text('다음',
                          style: TextStyle(
                              color: GlobalStyle.white,
                              fontSize: 18
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}