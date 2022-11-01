import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:mymathgame/core/app_assets.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import 'math_puzzle.dart';

class PuzzleMenu extends StatelessWidget {
  const PuzzleMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 90.w,
      height: 60.h,
      decoration: BoxDecoration(
          //color: Colors.red
          ),
      child: ListView(
        padding: EdgeInsets.all(0),
        children: [
          InkWell(
            onTap: () {
              Navigator.push<void>(
                context,
                MaterialPageRoute<void>(
                  builder: (BuildContext context) => const MathPuzzle(),
                ),
              );
            },
            child: Container(
              alignment: Alignment.centerLeft,
              margin: EdgeInsets.only(bottom: 3.h),
              width: 10.w,
              height: 17.h,
              decoration: BoxDecoration(
                  color: Colors.amber,
                  borderRadius: BorderRadius.circular(25),
                  gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.centerRight,
                    colors: [Colors.amber, Colors.red],
                  )),
              child: Container(
                  margin: EdgeInsets.only(left: 3.h),
                  child: Row(
                    children: [
                      Image.asset(
                        AppAssets.mathAssets,
                        height: 10.h,
                        color: Colors.black,
                      ),
                      Container(
                        margin: EdgeInsets.only(left: 1.h),
                        child: Text(
                          'MATH PUZZLE',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      )
                    ],
                  )),
            ),
          ),
        ],
      ),
    );
  }
}
