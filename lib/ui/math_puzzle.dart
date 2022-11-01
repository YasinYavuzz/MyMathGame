import 'package:flutter/material.dart';
import 'package:mymathgame/core/app_colors.dart';
import 'package:mymathgame/ui/calculator.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../core/app_assets.dart';
import '../theme/theme_provider.dart';

class MathPuzzle extends StatelessWidget {
  const MathPuzzle({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider theme, widget) {
        return Scaffold(
          // appBar: AppBar(),
          backgroundColor: theme.isDark == true
              ? AppColors.bgDarkColor
              : AppColors.bgLightColor,
          body: Column(
            children: [
              GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Container(
                  margin: EdgeInsets.only(top: 5.h, left: 3.h, right: 40.h),
                  width: 11.w,
                  height: 5.h,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(17)),
                  child: Icon(
                    Icons.chevron_left,
                    size: 4.h,
                  ),
                ),
              ),
              Container(
                alignment: Alignment.topLeft,
                margin: EdgeInsets.only(top: 4.h, left: 1.2.h),
                width: 85.w,
                height: 12.h,
                decoration: BoxDecoration(
                    //color: Colors.red
                    ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(right: 22.h),
                      child: Text(
                        //textAlign: TextAlign.start,
                        'Math Puzzle',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                            fontWeight: FontWeight.w500),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 1.h),
                      //alignment: Alignment.topLeft,
                      child: Text(
                        //textAlign: TextAlign.start,
                        'Each game with simple calculation with different approach',
                        style: TextStyle(
                            color: Colors.grey.withOpacity(0.7),
                            fontSize: 15,
                            fontWeight: FontWeight.w400),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                width: 85.w,
                height: 70.h,
                child: ListView(
                  physics: NeverScrollableScrollPhysics(),
                  padding: EdgeInsets.all(0),
                  children: [
                    InkWell(
                      onTap: () {
                        Navigator.push<void>(
                          context,
                          MaterialPageRoute<void>(
                            builder: (BuildContext context) =>
                                const CalculatorUI(),
                          ),
                        );
                      },
                      child: Ink(
                        //color: Colors.red,
                        child: Container(
                          alignment: Alignment.centerLeft,
                          //margin: EdgeInsets.only(bottom: 3.h),
                          width: 10.w,
                          height: 15.h,
                          decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(25),
                              gradient: LinearGradient(
                                begin: Alignment.bottomLeft,
                                end: Alignment.centerRight,
                                colors: [Colors.amber, Colors.red],
                              )),
                          child: Column(
                            children: [
                              Flexible(
                                  flex: 2,
                                  child: Row(
                                    children: [
                                      Container(
                                          margin: EdgeInsets.only(left: 2.5.h),
                                          width: 5.h,
                                          child: Image.asset(
                                            AppAssets.sandWatchAssets,
                                            height: 10.h,
                                          )),
                                      Container(
                                        margin: EdgeInsets.only(left: 3.h),
                                        child: Text(
                                          'Calculator',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 24,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      )
                                    ],
                                  )),
                              Align(
                                  alignment: Alignment.center,
                                  child: Container(
                                    width: 70.w,
                                    height: .2.h,
                                    color: Colors.black.withOpacity(0.4),
                                  )),
                              Flexible(
                                  flex: 2,
                                  child: Container(
                                      decoration: BoxDecoration(
                                          //color: Colors.amber
                                          ),
                                      child: Container(
                                          margin: EdgeInsets.only(
                                              top: 2.h, left: 3.5.h),
                                          alignment: Alignment.topLeft,
                                          child: Text('Score : ',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 18,
                                                  fontWeight:
                                                      FontWeight.w500)))))
                            ],
                          )),
                      )
                    ),
                    SizedBox(
                      height: 3.h,
                    ),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: 3.h),
                        width: 10.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.amber, Colors.red],
                            )),
                        child: Column(
                          children: [
                            Flexible(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 2.5.h),
                                        width: 5.h,
                                        child: Image.asset(
                                          AppAssets.questionAssets,
                                          height: 10.h,
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        'Guess the sign?',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 70.w,
                                  height: .2.h,
                                  color: Colors.black.withOpacity(0.4),
                                )),
                            Flexible(
                                flex: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                        //color: Colors.amber
                                        ),
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            top: 2.h, left: 3.5.h),
                                        alignment: Alignment.topLeft,
                                        child: Text('Score : ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500)))))
                          ],
                        )),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: 3.h),
                        width: 10.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.amber, Colors.red],
                            )),
                        child: Column(
                          children: [
                            Flexible(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 2.5.h),
                                        width: 5.h,
                                        child: Image.asset(
                                          AppAssets.correctAnswerAssets,
                                          height: 10.h,
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        'Correct Answer',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 70.w,
                                  height: .2.h,
                                  color: Colors.black.withOpacity(0.4),
                                )),
                            Flexible(
                                flex: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                        //color: Colors.amber
                                        ),
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            top: 2.h, left: 3.5.h),
                                        alignment: Alignment.topLeft,
                                        child: Text('Score : ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500)))))
                          ],
                        )),
                    Container(
                        alignment: Alignment.centerLeft,
                        margin: EdgeInsets.only(bottom: 3.h),
                        width: 10.w,
                        height: 15.h,
                        decoration: BoxDecoration(
                            color: Colors.amber,
                            borderRadius: BorderRadius.circular(25),
                            gradient: LinearGradient(
                              begin: Alignment.bottomLeft,
                              end: Alignment.centerRight,
                              colors: [Colors.amber, Colors.red],
                            )),
                        child: Column(
                          children: [
                            Flexible(
                                flex: 2,
                                child: Row(
                                  children: [
                                    Container(
                                        margin: EdgeInsets.only(left: 2.5.h),
                                        width: 5.h,
                                        child: Image.asset(
                                          AppAssets.fastDeliveryAssets,
                                          height: 10.h,
                                        )),
                                    Container(
                                      margin: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        'Quick Calculation',
                                        style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 24,
                                            fontWeight: FontWeight.w500),
                                      ),
                                    )
                                  ],
                                )),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: 70.w,
                                  height: .2.h,
                                  color: Colors.black.withOpacity(0.4),
                                )),
                            Flexible(
                                flex: 2,
                                child: Container(
                                    decoration: BoxDecoration(
                                        //color: Colors.amber
                                        ),
                                    child: Container(
                                        margin: EdgeInsets.only(
                                            top: 2.h, left: 3.5.h),
                                        alignment: Alignment.topLeft,
                                        child: Text('Score : ',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.w500)))))
                          ],
                        )),
                  ],
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
