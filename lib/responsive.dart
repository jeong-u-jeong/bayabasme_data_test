import 'package:flutter/cupertino.dart';

double pageWidth = MediaQueryData.fromWindow(WidgetsBinding.instance.window).size.width;

bool isMobile = pageWidth <= 480;
bool isTablet = pageWidth > 480 && pageWidth <= 768;
bool isSmallDesktop = pageWidth > 768 && pageWidth <= 1279;
bool isLargeDesktop = pageWidth > 1279;

class Responsive extends StatelessWidget {
  final Widget mobile;
  final Widget tablet;
  final Widget smallDesktop;
  final Widget largeDesktop;

  Responsive({
    Key? key,
    required this.mobile,
    required this.tablet,
    required this.smallDesktop,
    required this.largeDesktop,
  }) : super(key: key);


  @override
  Widget build(BuildContext context) {


return Column(
  mainAxisAlignment: MainAxisAlignment.center,
  children: [
    if(isMobile) ...[
      mobile
    ] else if(isTablet)...[
      tablet
    ] else if(isSmallDesktop)...[
      smallDesktop
    ] else if(isLargeDesktop)...[
      largeDesktop
    ]
  ]
);
  }
}