import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mymathgame/core/app_colors.dart';
import 'package:mymathgame/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppNameUI extends StatelessWidget {
  const AppNameUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider theme, child) {
        return Container(
          margin: EdgeInsets.only(top: 7.h),
          width: 85.w,
          height: 10.h,
          decoration: BoxDecoration(
              //color: Colors.red,
              ),
          child: Column(
            children: [
              Text(
                textAlign: TextAlign.center,
                'Brain Exercise',
                style: TextStyle(
                    color: theme.isDark == true ? AppColors.darkScoreTextColor : AppColors.lightScoreTextColor,
                    fontSize: 25,
                    fontWeight: FontWeight.w600),
              ),
              Container(
                margin: EdgeInsets.only(top: 0.5.h),
                child: Text(
                  textAlign: TextAlign.center,
                  'Do it exercise for powerfull brain',
                  style: TextStyle(
                      color: theme.isDark == true ? AppColors.darkScoreTextColor.withOpacity(0.4) : AppColors.lightScoreTextColor.withOpacity(0.4),
                      fontSize: 15,
                      fontWeight: FontWeight.w400),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
