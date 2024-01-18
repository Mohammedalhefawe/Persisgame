import 'dart:math';

import 'package:untitled1/Persis/structure/player.dart';
import 'move.dart';

class BoardState{
  late Player maxPlayer;
  late Player minPlayer;
  late bool turn; // true means p1 turn
  double evaluation = 0.0;

  BoardState(this.maxPlayer, this.minPlayer, this.turn);

  /*@override
  bool operator ==(Object other) {
    if(other is BoardState){
      return maxPlayer == other.maxPlayer && minPlayer == other.minPlayer && turn == other.turn;
    }
    return false;
  }

  @override
  int get hashCode => Object.hash(maxPlayer, minPlayer, turn);
*/

}

