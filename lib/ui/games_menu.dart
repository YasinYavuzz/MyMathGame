import 'package:flutter/material.dart';
import 'package:mymathgame/core/app_colors.dart';
import 'package:mymathgame/theme/theme_provider.dart';
import 'package:mymathgame/ui/puzzle_menu.dart';
import 'package:provider/provider.dart';
import 'app_bar.dart';
import 'app_name.dart';

class GamesMenu extends StatefulWidget {
  const GamesMenu({super.key});

  @override
  State<GamesMenu> createState() => _GamesMenuState();
}

class _GamesMenuState extends State<GamesMenu> {
  @override
  Widget build(BuildContext context) {
    return Consumer(
      builder: (context, ThemeProvider theme, widget) {
        return Scaffold(
          backgroundColor: theme.isDark == true ? AppColors.bgDarkColor : AppColors.bgLightColor,
          body: Column(
            children: [
              AppBarUI(),
              AppNameUI(),
              PuzzleMenu() 
            ],
          ),
        );
      },
    );
  }
}
