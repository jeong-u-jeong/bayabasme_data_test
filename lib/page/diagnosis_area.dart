import 'package:bayabasme_data_test/global_assets/global_style.dart';
import 'package:bayabasme_data_test/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DiagnosisArea extends StatefulWidget {
  const DiagnosisArea({Key? key}) : super(key: key);

  @override
  State<DiagnosisArea> createState() => _DiagnosisAreaState();
}

class _DiagnosisAreaState extends State<DiagnosisArea> {
  bool female = false;
  bool male = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: GlobalStyle.white,
      body: SingleChildScrollView(
        child: Responsive(
          mobile: SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 54,
                  color: GlobalStyle.background_gray,
                  child: Center(
                    child: Text('두피 면적 테스트',
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: GlobalStyle.dark
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 130.h, 20.w, 0),
                  child: Column(
                    children: [
                      Text('정확한 두피 면적 계산을 위해 성별을 입력해주세요.', style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),),
                      Container(height: 26.h,),
                      Text('바야바즈 두피면적 진단은 성별과 나이대를 토대로 면적이 계산되요.', style: TextStyle(
                        fontSize: 17.sp,
                      ),),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 20.w),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(height: 30.h,),
                      GestureDetector(
                        onTap:  () {
                          setState(() {
                            male=!male;
                            female=false;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: male ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('남자', style: TextStyle(
                                fontSize: 13.sp,
                                color: male ? GlobalStyle.white : GlobalStyle.light_gray,
                              ),)
                          ),
                        ),
                      ),
                      Container(height: 15.h,),
                      GestureDetector(
                        onTap:  () {
                          setState(() {
                            female=!female;
                            male=false;
                          });
                        },
                        child: Container(
                          width: double.infinity,
                          height: 50.h,
                          decoration: BoxDecoration(
                            color: female ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('여자', style: TextStyle(
                                fontSize: 13.sp,
                                color: female ? GlobalStyle.white : GlobalStyle.light_gray,
                              ),)
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 180.h,bottom: 50.h,),
                    width: 100.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: male || female ? GlobalStyle.green : GlobalStyle.gray,
                        borderRadius: BorderRadius.circular(5.r)
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
          ),
          tablet: SafeArea(
            child: Column(
              children: [
                Container(
                  width: double.infinity,
                  height: 54,
                  color: GlobalStyle.background_gray,
                  child: Center(
                    child: Text('두피 면적 테스트',
                      style: TextStyle(
                          fontSize: 18.sp,
                          color: GlobalStyle.dark
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(20.w, 130.h, 20.w, 0),
                  child: Column(
                    children: [
                      Text('정확한 두피 면적 계산을 위해 성별을 입력해주세요.', style: TextStyle(
                        fontSize: 17.sp,
                        fontWeight: FontWeight.bold,
                      ),),
                      Container(height: 26.h,),
                      Text('바야바즈 두피면적 진단은 성별과 나이대를 토대로 면적이 계산되요.', style: TextStyle(
                        fontSize: 17.sp,
                      ),),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 20.w),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(height: 30.h,),
                        GestureDetector(
                          onTap:  () {
                            setState(() {
                              male=!male;
                              female=false;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50.h,
                            decoration: BoxDecoration(
                              color: male ? GlobalStyle.green :GlobalStyle.white,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                color: GlobalStyle.light_gray.withOpacity(0.1),
                              ),
                            ),
                            child: Center(
                                child: Text('남자', style: TextStyle(
                                  fontSize: 13.sp,
                                  color: male ? GlobalStyle.white : GlobalStyle.light_gray,
                                ),)
                            ),
                          ),
                        ),
                        Container(height: 15.h,),
                        GestureDetector(
                          onTap:  () {
                            setState(() {
                              female=!female;
                              male=false;
                            });
                          },
                          child: Container(
                            width: double.infinity,
                            height: 50.h,
                            decoration: BoxDecoration(
                              color: female ? GlobalStyle.green :GlobalStyle.white,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(
                                color: GlobalStyle.light_gray.withOpacity(0.1),
                              ),
                            ),
                            child: Center(
                                child: Text('여자', style: TextStyle(
                                  fontSize: 13.sp,
                                  color: female ? GlobalStyle.white : GlobalStyle.light_gray,
                                ),)
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                GestureDetector(
                  onTap: () {

                  },
                  child: Container(
                    margin: EdgeInsets.only(top: 180.h,bottom: 50.h,),
                    width: 100.w,
                    height: 40.h,
                    decoration: BoxDecoration(
                        color: male || female ? GlobalStyle.green : GlobalStyle.gray,
                        borderRadius: BorderRadius.circular(5.r)
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
          ),
          smallDesktop: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: GlobalStyle.background_gray,
                ),
                child: const Center(
                  child: Text(
                    '두피 면적 테스트',
                    style: TextStyle(
                        fontSize: 24,
                        color: GlobalStyle.dark
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 150),
                    width: 1024,
                    child: Column(
                      children: [
                        const Text('정확한 두피 면적 계산을 위해 성별을 입력해 주세요.', style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),),
                        Container(height: 20),
                        const Text('바야바즈 두피면적 진단은 성별과 나이대를 토대로 면적이 계산되요.', style: TextStyle(
                            fontSize: 22
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap:  () {
                          setState(() {
                            male=!male;
                            female=false;
                          });
                        },
                        child: Container(
                          width: 500,
                          height: 70,
                          decoration: BoxDecoration(
                            color: male ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('남자', style: TextStyle(
                                fontSize: 22,
                                color: male ? GlobalStyle.white : GlobalStyle.light_gray,
                              ),)
                          ),
                        ),
                      ),
                      Container(height: 20,),
                      GestureDetector(
                        onTap:  () {
                          setState(() {
                            female=!female;
                            male=false;
                          });
                        },
                        child: Container(
                          width: 500,
                          height: 70,
                          decoration: BoxDecoration(
                            color: female ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('여자', style: TextStyle(
                                fontSize: 22,
                                color: female ? GlobalStyle.white : GlobalStyle.light_gray,
                              ),)
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(top: 220, bottom: 150,),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          color: male || female ? GlobalStyle.green : GlobalStyle.gray,
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
              ),
            ],
          ),
          largeDesktop: Column(
            children: [
              Container(
                height: 200,
                width: double.infinity,
                decoration: const BoxDecoration(
                  color: GlobalStyle.background_gray,
                ),
                child: const Center(
                  child: Text(
                    '두피 면적 테스트',
                    style: TextStyle(
                        fontSize: 24,
                        color: GlobalStyle.dark
                    ),
                  ),
                ),
              ),
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 150),
                    width: 1024,
                    child: Column(
                      children: [
                        const Text('정확한 두피 면적 계산을 위해 성별을 입력해 주세요.', style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                        ),),
                        Container(height: 20),
                        const Text('바야바즈 두피면적 진단은 성별과 나이대를 토대로 면적이 계산되요.', style: TextStyle(
                            fontSize: 22
                        ),),
                      ],
                    ),
                  ),
                  Container(
                    height: 130,
                  ),
                  Column(
                    children: [
                      GestureDetector(
                        onTap:  () {
                          setState(() {
                            male=!male;
                            female=false;
                          });
                        },
                        child: Container(
                          width: 500,
                          height: 70,
                          decoration: BoxDecoration(
                            color: male ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('남자', style: TextStyle(
                                fontSize: 22,
                                color: male ? GlobalStyle.white : GlobalStyle.light_gray,
                              ),)
                          ),
                        ),
                      ),
                      Container(height: 20,),
                      GestureDetector(
                        onTap:  () {
                          setState(() {
                            female=!female;
                            male=false;
                          });
                        },
                        child: Container(
                          width: 500,
                          height: 70,
                          decoration: BoxDecoration(
                            color: female ? GlobalStyle.green :GlobalStyle.white,
                            borderRadius: BorderRadius.circular(5),
                            border: Border.all(
                              color: GlobalStyle.light_gray.withOpacity(0.1),
                            ),
                          ),
                          child: Center(
                              child: Text('여자', style: TextStyle(
                                fontSize: 22,
                                color: female ? GlobalStyle.white : GlobalStyle.light_gray,
                              ),)
                          ),
                        ),
                      ),
                    ],
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: Container(
                      margin: const EdgeInsets.only(top: 220, bottom: 150,),
                      width: 200,
                      height: 60,
                      decoration: BoxDecoration(
                          color: male || female ? GlobalStyle.green : GlobalStyle.gray,
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
              ),
            ],
          ),
        ),
      ),
    );
  }
}
