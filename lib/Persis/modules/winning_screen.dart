import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled1/Persis/logic/game_cubit.dart';
import 'package:untitled1/Persis/logic/game_states.dart';
import 'package:untitled1/Persis/modules/game_screen.dart';

import '../structure/constants.dart';
import '../style/colors.dart';
import 'home_screen.dart';

class WinningScreen extends StatelessWidget {
  const WinningScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<GameCubit, GameStates>(
      listener: (context, state) {},
      builder: (context, state){
        var cubit = GameCubit.get(context);
        return Scaffold(
          appBar: AppBar(
            backgroundColor: red,
          ),
          body: Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    'ألف مبرووك ${cubit.winningPlayer.name}',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.black,
                    ),
                    textDirection: TextDirection.rtl,
                  ),
                  const SizedBox(height: 50,),
                  SizedBox(
                    height: 50,
                    width: 160,
                    child: ClipRRect(
                      borderRadius:
                      const BorderRadiusDirectional.all(
                          Radius.circular(20)),
                      child: defaultButton(
                        onPressed: () {
                          cubit.init();
                          navigateAndFinish(context, GameScreen());
                        },
                        text: 'إعادة اللعبة',
                        textColor: Colors.white,
                        buttonColor: red,
                        borderRadius: 20,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
