import 'package:bayabasme_data_test/global_assets/global_style.dart';
import 'package:bayabasme_data_test/page/step_2_diagnosis.dart';
import 'package:bayabasme_data_test/responsive.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class StepOne extends StatelessWidget {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Responsive(
        mobile:  SafeArea(
          child: Column(
          children: [
          Column(
            children: [
              Text('바야바즈 !',
                style: TextStyle(
                  fontSize: 25.sp,
                ),
              ),
              Text('내 두피 상태를 알려줘 !',
                style: TextStyle(
                  fontSize: 27.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
          Container(height: 40.h,),
          Stack(
            children: [
              Container(
                  margin: EdgeInsets.symmetric(horizontal: 30.w),
                  child: Image.asset('images/bayabas.png', width: 90.w,)
              ),
              Positioned(
                top: 60,
                left: 90,
                child: Transform.rotate(
                  angle: 6.6,
                  child: Icon(Icons.search_rounded,
                    color: GlobalStyle.light_gray,
                    size: 60.sp,
                  ),
                ),
              ),
            ],
          ),
          Container(height: 50.h,),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30.w),
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 25.w),
              decoration: BoxDecoration(
                color: GlobalStyle.white,
                borderRadius: BorderRadius.circular(10.r),
                boxShadow: [BoxShadow(
                  color: GlobalStyle.gray,
                  offset: Offset(0,1),
                  blurRadius: 1.0,
                )],
              ),
              child: Column(
                // crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('바야바즈가 제공하는 두피 진단은',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: GlobalStyle.light_gray,
                    ),
                  ),
                  Text('유전적 요인과 생활 패턴, 스트레스와',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: GlobalStyle.light_gray,
                    ),
                  ),
                  Text('두피 타입 등을 파악하여',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: GlobalStyle.light_gray,
                    ),
                  ),
                  Text('현재 두피의 상태와 건강을 진단해요!',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: GlobalStyle.light_gray,
                    ),
                  ),
                  Container(height: 30.h,),
                  Text('두피 질병 및 질환은',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: GlobalStyle.light_gray,
                    ),
                  ),
                  Text('의료기관을 방문 해 주세요',
                    style: TextStyle(
                      fontSize: 16.sp,
                      color: GlobalStyle.light_gray,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(height: 70.h,),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => StepTwo()),
              );
            },
            child: Container(
              width: 200.w,
              height: 55.h,
              decoration: BoxDecoration(
                color: GlobalStyle.green,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Text('진단 구경하기',
                  style: TextStyle(
                    color: GlobalStyle.white,
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ),
          ],
          ),
        ),
        tablet: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '바야바즈!',
                  style: TextStyle(
                    fontSize: 34,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Text(
                  '내 두피 상태를 알려줘!',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Container(
                  height: 40,
                ),
                Text(
                  '바야바즈가 제공하는 두피 진단은',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Text(
                  '유전적 요인, 생활 패턴, 스트레스, 두피 타입 등을',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Text(
                  '파악하여 현재 두피의 상태와 건강을 진단해요.',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Container(
                  height: 30,
                ),
                Text(
                  '두피 질병 및 질환은 의료기관을 방문 해 주세요.',
                  style: TextStyle(
                    fontSize: 18,
                    color: GlobalStyle.intro_txt_gray,
                  ),
                ),
                Container(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StepTwo()),
                    );
                  },
                  child: Container(
                    width: 410,
                    height: 50,
                    decoration: BoxDecoration(
                        color: GlobalStyle.white,
                        border: Border.all(
                          width: 1,
                          color: GlobalStyle.intro_border_gray,
                        )),
                    child: Center(
                      child: Text(
                        '진단 구경하기',
                        style: TextStyle(
                          fontSize: 16,
                          color: GlobalStyle.intro_txt_gray,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        smallDesktop: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '바야바즈!',
                  style: TextStyle(
                    fontSize: 34,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Text(
                  '내 두피 상태를 알려줘!',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Container(
                  height: 40,
                ),
                Text(
                  '바야바즈가 제공하는 두피 진단은',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Text(
                  '유전적 요인, 생활 패턴, 스트레스, 두피 타입 등을',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Text(
                  '파악하여 현재 두피의 상태와 건강을 진단해요.',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Container(
                  height: 30,
                ),
                Text(
                  '두피 질병 및 질환은 의료기관을 방문 해 주세요.',
                  style: TextStyle(
                    fontSize: 18,
                    color: GlobalStyle.intro_txt_gray,
                  ),
                ),
                Container(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StepTwo()),
                    );
                  },
                  child: Container(
                    width: 410,
                    height: 50,
                    decoration: BoxDecoration(
                        color: GlobalStyle.white,
                        border: Border.all(
                          width: 1,
                          color: GlobalStyle.intro_border_gray,
                        )),
                    child: Center(
                      child: Text(
                        '진단 구경하기',
                        style: TextStyle(
                          fontSize: 16,
                          color: GlobalStyle.intro_txt_gray,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        largeDesktop:  Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  '바야바즈!',
                  style: TextStyle(
                    fontSize: 34,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Text(
                  '내 두피 상태를 알려줘!',
                  style: TextStyle(
                    fontSize: 38,
                    fontWeight: FontWeight.bold,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Container(
                  height: 40,
                ),
                Text(
                  '바야바즈가 제공하는 두피 진단은',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Text(
                  '유전적 요인, 생활 패턴, 스트레스, 두피 타입 등을',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Text(
                  '파악하여 현재 두피의 상태와 건강을 진단해요.',
                  style: TextStyle(
                    fontSize: 20,
                    color: GlobalStyle.light_black,
                  ),
                ),
                Container(
                  height: 30,
                ),
                Text(
                  '두피 질병 및 질환은 의료기관을 방문 해 주세요.',
                  style: TextStyle(
                    fontSize: 18,
                    color: GlobalStyle.intro_txt_gray,
                  ),
                ),
                Container(
                  height: 35,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => StepTwo()),
                    );
                  },
                  child: Container(
                    width: 410,
                    height: 50,
                    decoration: BoxDecoration(
                        color: GlobalStyle.white,
                        border: Border.all(
                          width: 1,
                          color: GlobalStyle.intro_border_gray,
                        )),
                    child: Center(
                      child: Text(
                        '진단 구경하기',
                        style: TextStyle(
                          fontSize: 16,
                          color: GlobalStyle.intro_txt_gray,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        )
      )
    );
  }
}


