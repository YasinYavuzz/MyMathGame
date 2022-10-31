import 'package:flutter/material.dart';
import 'package:mymathgame/core/app_assets.dart';
import 'package:mymathgame/core/app_colors.dart';
import 'package:mymathgame/theme/theme_provider.dart';
import 'package:provider/provider.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class AppBarUI extends StatelessWidget {
  const AppBarUI({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider theme, widget) {
        return Container(
          margin: EdgeInsets.only(top: 4.5.h),
          width: 100.w,
          height: 8.h,
          decoration: BoxDecoration(
              //color: Colors.red,
              ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 0.8.h),
                margin: EdgeInsets.only(left: 3.5.h),
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
                          color: theme.isDark == true ? AppColors.darkScoreTextColor : AppColors.lightScoreTextColor,
                          fontSize: 19,
                          fontWeight: FontWeight.w500),
                    )),
                  )
                ]),
              ),
              Container(
                margin: EdgeInsets.only(right: 2.h),
                width: 10.h,
                height: 7.h,
                child: IconButton(
                    onPressed: () {
                      theme.changeTheme(!theme.isDark);
                    },
                    icon: theme.isDark == true ? Image.asset(AppAssets.sunAssets,color: AppColors.sunAssetsColor,height: 3.2.h,) 
                    : Image.asset(AppAssets.moonAssets,color: AppColors.moonAssetsColor,height: 2.8.h,) 
                  ),
              )
            ],
          ),
        );
      },
    );
  }
}
