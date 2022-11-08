import 'package:flutter/animation.dart';
import 'package:mymathgame/core/app_constant.dart';
import 'package:mymathgame/ui/app/time_provider.dart';




class GameProvider<T> extends TimeProvider{
  final GameCategoryType gameCategoryType;
  late List<T> list;
  late int index;
  late double currentScore;
  late double  oldScore;
  late T currnetState;
  late String result;
  GameProvider({required TickerProvider vsync, required this.gameCategoryType}) : super(vsync: vsync, totalTime: KeyUtil.getTimeUtil(gameCategoryType));
  //! 
  void startGame() async{
    result = "";
    
  }

  List<T> getList(int level){
    switch (gameCategoryType) {
      case GameCategoryType.CALCULATOR:
        
        break;
      default:
        break;
    }
  }
  

} 