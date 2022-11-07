import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mymathgame/core/app_assets.dart';
import 'package:mymathgame/core/app_colors.dart';
import 'package:mymathgame/ui/games_menu.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.bgDarkColor,
      // backgroundColor: Colors.black,
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.only(left: 1.h, top: 5.h),
            width: 90.w,
            height: 21.h,
            decoration: BoxDecoration(
                //color: Colors.red
                ),
            child: Column(
              children: [
                Stack(
                  children: [
                    Text(
                      'BRAIN',
                      style: GoogleFonts.inter(
                          color: AppColors.loginTextColor,
                          fontSize: 96,
                          fontWeight: FontWeight.bold),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 12.h, left: 7.3.h),
                      child: Text(
                        'EXERCISE',
                        style: GoogleFonts.inter(
                            color: AppColors.loginTextColor,
                            fontSize: 36,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          Container(
            alignment: Alignment.center,
            margin: EdgeInsets.only(),
            width: 90.w,
            height: 35.h,
            decoration: BoxDecoration(
                //color: Colors.red
                ),
            child: Image.asset(
              AppAssets.loginbgAssets,
              fit: BoxFit.cover,
            ),
          ),
          Row(
            children: [
              Container(
                margin: EdgeInsets.only(top: 15.h),
                width: 30.w,
                height: 15.h,
                //decoration: BoxDecoration(color: Colors.green),
                child: Stack(
                  children: [
                    Container(
                      width: 35.w,
                      height: 13.h,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    Positioned(
                      top: 2.h,
                      left: .1.h,
                      right: .1.h,
                      child: Container(
                        width: 35.w,
                        height: 9.h,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 4,
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                          )
                        ], color: Color(0xffA63838), shape: BoxShape.circle),
                        child: Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                AppAssets.voiceAssets,
                                height: 5.h,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 1.5.h),
                width: 40.w,
                height: 25.h,
                //decoration: BoxDecoration(color: Colors.green),
                child: Stack(
                  children: [
                    Container(
                      width: 40.w,
                      height: 20.h,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    Container(
                      margin: EdgeInsets.only(top: 2.3.h, left: 1.1.h),
                      width: 35.w,
                      height: 15.h,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                          blurRadius: 4,
                          spreadRadius: 4,
                          color: Colors.black.withOpacity(0.5),
                          offset: Offset(4, 4),
                        )
                      ], color: Color(0xffA63838), shape: BoxShape.circle),
                      child: Container(
                        margin: EdgeInsets.only(left: 0.9.h),
                        child: IconButton(
                            onPressed: () {
                              Navigator.push<void>(
                                context,
                                MaterialPageRoute<void>(
                                  builder: (BuildContext context) =>
                                      const GamesMenu(),
                                ),
                              );
                            },
                            icon: Image.asset(
                              AppAssets.playAssets,
                              fit: BoxFit.fill,
                              height: 9.h,
                            )),
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 15.h),
                width: 30.w,
                height: 15.h,
                //decoration: BoxDecoration(color: Colors.green),
                child: Stack(
                  children: [
                    Container(
                      width: 35.w,
                      height: 13.h,
                      decoration: BoxDecoration(
                          color: Colors.white, shape: BoxShape.circle),
                    ),
                    Positioned(
                      top: 2.h,
                      left: .1.h,
                      right: .1.h,
                      child: Container(
                        width: 35.w,
                        height: 9.h,
                        decoration: BoxDecoration(boxShadow: [
                          BoxShadow(
                            blurRadius: 4,
                            spreadRadius: 4,
                            color: Colors.black.withOpacity(0.5),
                            offset: Offset(4, 4),
                          )
                        ], color: Color(0xffA63838), shape: BoxShape.circle),
                        child: Container(
                          child: IconButton(
                              onPressed: () {},
                              icon: Image.asset(
                                AppAssets.exitAssets,
                                height: 5.h,
                              )),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
