import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
//import 'package:untitled1/algorithms_lab/logic/game_cubit.dart';
//import 'package:untitled1/algorithms_lab/logic/game_states.dart';
//import 'package:untitled1/algorithms_lab/modules/game_screen.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:untitled1/Persis/modules/game_screen.dart';

import 'Persis/logic/game_cubit.dart';
import 'Persis/logic/game_states.dart';
//import 'package:untitled1/algorithms_lab/modules/home_screen.dart';
//import 'package:untitled1/algorithms_lab/structure/game_model.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);

    return BlocProvider(
      create: (context) => GameCubit()..init(),
      child: BlocConsumer<GameCubit, GameStates>(
        listener: (context, state) {},
        builder: (context, state) {
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            title: 'Easter Sokoban',
            localizationsDelegates: const [
              GlobalMaterialLocalizations.delegate,
              GlobalWidgetsLocalizations.delegate,
              GlobalCupertinoLocalizations.delegate
            ],
            supportedLocales: const [
              Locale('en'),
              Locale('ar'),
            ],
            locale: const Locale('ar'),
            theme: ThemeData(
              primarySwatch: Colors.amber,
            ),

            home: GameScreen(),
          );
        },
      )
    );
  }
}
