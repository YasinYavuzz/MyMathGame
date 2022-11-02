import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:mymathgame/core/app_colors.dart';
import 'package:mymathgame/ui/alert_dialog.dart';
import 'package:mymathgame/ui/alert_dialog_gameover.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../core/app_assets.dart';

class CalculatorUI extends StatefulWidget {
  const CalculatorUI({super.key});

  @override
  State<CalculatorUI> createState() => _CalculatorUIState();
}

class _CalculatorUIState extends State<CalculatorUI> {
  List<String> number = [];
  int sayac = 40;
  bool animationCount = true;
  @override
  void initState() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      //sayac = sayac - timer.tick;
      setState(() {
        sayac--;
        if (sayac < 0) {
          sayac = 0;
          animationCount = false;
        }
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkColor,
      body: Stack(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Container(
                //alignment: Alignment.bottomCenter,
                //margin: EdgeInsets.only(top: 2.h),
                width: 100.w,
                height: 11.h,
                decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20),
                        bottomRight: Radius.circular(20))),
                child: Column(
                  children: [
                    Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.pop(context);
                          },
                          child: Container(
                            margin: EdgeInsets.only(top: 3.2.h, left: 3.h),
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
                          padding: EdgeInsets.only(left: 0.8.h),
                          margin: EdgeInsets.only(left: 10.5.h, top: 3.5.h),
                          width: 10.h,
                          height: 6.h,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(15)),
                          child: Row(children: [
                            Container(
                                height: 4.5.h,
                                child: Image.asset(
                                  AppAssets.cupAssets,
                                  fit: BoxFit.contain,
                                )),
                            Container(
                              width: 4.5.h,
                              height: 4.h,
                              decoration: BoxDecoration(//color: Colors.blue
                                  ),
                              child: Center(
                                  child: Text(
                                '0',
                                style: TextStyle(
                                    color: AppColors.darkScoreTextColor,
                                    fontSize: 19,
                                    fontWeight: FontWeight.w500),
                              )),
                            ),
                          ]),
                        ),
                        GestureDetector(
                          onTap: () {},
                          child: Container(
                            margin: EdgeInsets.only(top: 3.4.h, left: 11.h),
                            width: 11.w,
                            height: 5.h,
                            decoration: BoxDecoration(
                                color: Color.fromARGB(255, 44, 41, 41)
                                    .withOpacity(0.9),
                                borderRadius: BorderRadius.circular(24)),
                            child: Icon(
                              Icons.pause,
                              size: 3.h,
                              color: Colors.white70,
                            ),
                          ),
                        ),
                      ],
                    ),
                    // Stack(
                    //   children: [
                    //     Container(
                    //       margin: EdgeInsets.only(top: 1.h),
                    //       width: 85.w,
                    //       height: 0.5.h,
                    //       decoration: BoxDecoration(
                    //         color: Colors.white,
                    //         //borderRadius: BorderRadius.only(topLeft: Radius.circular(25))
                    //       ),
                    //     ),
                    //     Container(
                    //       margin: EdgeInsets.only(top: 1.h),
                    //       width: 60.w,
                    //       height: 0.5.h,
                    //       decoration: BoxDecoration(
                    //         color: Colors.blue,
                    //         //borderRadius: BorderRadius.only(topLeft: Radius.circular(25))
                    //       ),
                    //     ),
                    //   ],
                    // ),
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.h, right: 1.h),
                child: CircularPercentIndicator(
                  radius: 30.0,
                  restartAnimation: false,
                  animation: true,
                  animationDuration: 40000,
                  onAnimationEnd: () {
                    sayac = 0;
                  },
                  lineWidth: 6.0,
                  percent: 1,
                  center: new Text(
                    "${sayac}",
                    style: new TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20.0),
                  ),
                  circularStrokeCap: CircularStrokeCap.butt,
                  backgroundColor: Colors.yellow,
                  progressColor: Colors.red,
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                    width: 45.w,
                    height: 3.h,
                    decoration: BoxDecoration(
                        //color: Colors.red
                        ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Calculator',
                          style: TextStyle(
                              color: Colors.grey.withOpacity(0.8),
                              fontSize: 18,
                              fontWeight: FontWeight.w600),
                        ),
                        Container(
                          margin: EdgeInsets.only(
                            left: 0.7.h,
                          ),
                          child: GestureDetector(
                            onTap: () {
                              showModalBottomSheet(
                                context: context,
                                backgroundColor: Colors.red.withOpacity(0.8),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.only(
                                  topLeft: Radius.circular(24),
                                  topRight: Radius.circular(24),
                                )),
                                builder: (context) {
                                  return Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(top: 2.h),
                                        child: Text(
                                          'Calculator',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 2.h),
                                        width: 80.w,
                                        height: 25.h,
                                        decoration: BoxDecoration(
                                            //image: DecorationImage(image:Image.network(AppAssets.calculatorIntroAssets)),
                                            color: Colors.blue,
                                            borderRadius:
                                                BorderRadius.circular(25)),
                                        //child: Text('Calculator',style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.w500),),
                                        child: Image.asset(
                                          AppAssets.calculatorIntroAssets,
                                          fit: BoxFit.cover,
                                          width: 70.w,
                                          height: 20.h,
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 1.h),
                                        width: 70.w,
                                        height: 5.h,
                                        decoration: BoxDecoration(
                                            //color: Colors.blue
                                            ),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          'You need to solve given equation correctly.',
                                          style: TextStyle(
                                              color:
                                                  Colors.grey.withOpacity(0.8),
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 1.h),
                                        width: 70.w,
                                        height: 3.h,
                                        decoration: BoxDecoration(
                                            //color: Colors.blue
                                            ),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          '1.0 for correct answer',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.only(top: 1.h),
                                        width: 70.w,
                                        height: 3.h,
                                        decoration: BoxDecoration(
                                            //color: Colors.blue
                                            ),
                                        child: Text(
                                          textAlign: TextAlign.center,
                                          '-1.0 for wrong answer',
                                          style: TextStyle(
                                              color: Colors.white,
                                              fontSize: 17,
                                              fontWeight: FontWeight.w500),
                                        ),
                                      ),
                                      Container(
                                        alignment: Alignment.center,
                                        margin: EdgeInsets.only(top: 2.h),
                                        width: 40.w,
                                        height: 5.h,
                                        decoration: BoxDecoration(
                                          boxShadow: [
                                            BoxShadow(
                                                blurRadius: 30,
                                                spreadRadius: 1,
                                                color: Color.fromARGB(
                                                    255, 63, 28, 28),
                                                offset: Offset(0, 0))
                                          ],
                                          //color: Colors.blue,
                                          borderRadius:
                                              BorderRadius.circular(24),
                                          gradient: LinearGradient(
                                            begin: Alignment.bottomLeft,
                                            end: Alignment.centerRight,
                                            colors: [Colors.amber, Colors.red],
                                          ),
                                        ),
                                        child: GestureDetector(
                                          onTap: () {
                                            Navigator.pop(context);
                                          },
                                          child: Text(
                                            'GOT IT!',
                                            style: TextStyle(
                                                color: Colors.white,
                                                fontSize: 18,
                                                fontWeight: FontWeight.bold),
                                          ),
                                        ),
                                      ),
                                    ],
                                  );
                                },
                              );
                            },
                            child: Icon(
                              Icons.info,
                              color: Colors.grey.withOpacity(0.8),
                              size: 2.3.h,
                            ),
                          ),
                        ),
                       
                        // Container(
                        //   //margin: EdgeInsets.only(bottom: 1.h),
                        //   child: IconButton(
                        //     color: Colors.grey.withOpacity(0.8),
                        //     iconSize: 2.4.h,
                        //     onPressed: () {

                        //   }, icon: Icon(Icons.info)),
                        // )
                      ],
                    )),
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 2.h),
                  width: 70.w,
                  height: 8.h,
                  decoration: BoxDecoration(
                    //color: Colors.red
                  ),
                  child: Center(child: Text('10 - 2',style: 
                        TextStyle(color: Colors.white,fontSize: 45,
                        fontWeight: FontWeight.w500,letterSpacing: 2),))
                ),
              ),

              Align(
                alignment: Alignment.center,
                child: Container(
                  margin: EdgeInsets.only(top: 2.5.h),
                  width: 70.w,
                  height: 8.h,
                  //padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                      color: AppColors.bgDarkColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          spreadRadius: 3,
                          color: Color.fromARGB(255, 0, 0, 0).withOpacity(0.3),
                          offset: Offset(5, 5),
                        )
                      ]),
                      child: Center(child: Text('000',style: 
                        TextStyle(color: Colors.white,fontSize: 40,
                        fontWeight: FontWeight.w500,letterSpacing: 2),)),
                ),
              ),
              // LinearPercentIndicator(
              //       width: 100.w,
              //       lineHeight: 0.5.h,
              //       animation: true,
              //       //lineHeight: 20.0,
              //       animationDuration: 2500,
              //       percent: 0.8,
              //       //center: Text("80.0%"),
              //       linearStrokeCap: LinearStrokeCap.roundAll,
              //       progressColor: Colors.green,
              //     ),

              Container(
                margin: EdgeInsets.only(top: 1.h),
                width: 100.w,
                height: 53.h,
                decoration: BoxDecoration(
                    //color: Colors.red,
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(25),
                        topRight: Radius.circular(25))),
                child: Center(
                  child: GridView(
                    physics: NeverScrollableScrollPhysics(),
                    padding: EdgeInsets.all(20),
                    //itemCount: 12,
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 15.0,
                      crossAxisSpacing: 15.0,
                      childAspectRatio: 1.2,
                    ),
                    children: [
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            print("1");
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.oneNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          setState(() {
                            print("2");
                          });
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.twoNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          number.add("3");
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.threeNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          number.add("4");
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.fourNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          number.add("5");
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.fiveNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          number.add("6");
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.sixNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          number.add("");
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.sevenNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          number.add("1");
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.eightNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        onTap: () {
                          number.add("1");
                        },
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.nineNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                            padding: EdgeInsets.all(23),
                            decoration: BoxDecoration(
                                color: AppColors.bgDarkColor,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    blurRadius: 10,
                                    spreadRadius: 3,
                                    color: Color.fromARGB(255, 0, 0, 0)
                                        .withOpacity(0.3),
                                    offset: Offset(5, 5),
                                  )
                                ]),
                            child: Center(
                                child: Text(
                              'Clear',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w500),
                            ))),
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(23),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.zeroNumberAssets,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      GestureDetector(
                        child: Container(
                          padding: EdgeInsets.all(32),
                          decoration: BoxDecoration(
                              color: AppColors.bgDarkColor,
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                  blurRadius: 10,
                                  spreadRadius: 3,
                                  color: Color.fromARGB(255, 0, 0, 0)
                                      .withOpacity(0.3),
                                  offset: Offset(5, 5),
                                )
                              ]),
                          child: SvgPicture.asset(
                            AppAssets.backAssets,
                            color: Colors.white,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ),
            ],
          ),
          AlertDialogUI(),
          GameOver()
        ],
      ),
    );
  }
}
