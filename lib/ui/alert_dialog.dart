import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mymathgame/core/app_colors.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AlertDialogUI extends StatelessWidget {
  AlertDialogUI({super.key});


  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: false,
      child: Align(
        alignment: Alignment.center,
        child: Container(
          width: 80.w,
          height: 24.h,
          decoration: BoxDecoration(
              color: Colors.red,
              borderRadius: BorderRadius.circular(25)),
          child: Column(
            children: [
              Container(
                margin: EdgeInsets.only(top: 1.h),
                width: 70.w,
                height: 8.h,
                decoration: BoxDecoration(
                    //color: Colors.red
                    ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Are you sure you want to quit the game?',
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w500),
                  ),
                ),
              ),
              Container(
                width: 70.w,
                height: 6.h,
                decoration: BoxDecoration(
                    //color: Colors.red
                    ),
                child: Center(
                  child: Text(
                    textAlign: TextAlign.center,
                    'Your current score is',
                    style: TextStyle(
                        color: AppColors.darkScoreTextColor.withOpacity(0.5),
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ),
              ),
              Row(
                children: [
                  Container(
                    margin: EdgeInsets.only(left: 4.h, top: 1.h),
                    width: 44.w,
                    height: 5.h,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.bottomCenter,
                          end: Alignment.topCenter,
                          colors: [Colors.amber, Colors.red],
                        ),
                        borderRadius: BorderRadius.circular(5),
                        boxShadow: [
                          BoxShadow(
                               )
                        ]),
                    child: Center(
                        child: Text(
                      'YES',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w600),
                    )),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 2.h, top: 1.h),
                      width: 16.w,
                      height: 5.h,
                      decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [Colors.yellow, Colors.red],
                          ),
                          borderRadius: BorderRadius.circular(5),
                          boxShadow: [
                            BoxShadow(
                                blurRadius: 30,
                                spreadRadius: 1,
                                color: Color.fromARGB(255, 63, 28, 28),
                                offset: Offset(0, 0))
                          ]),
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                      )),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
