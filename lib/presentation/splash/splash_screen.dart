import 'dart:async';

import 'package:flutter/material.dart';
import 'package:quiz/logic/bloc_exports.dart';
import 'package:quiz/presentation/home/home_Screen.dart';

import 'package:quiz/utils/utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Timer(const Duration(seconds: 3), () {
      navigatorKey.currentState!.pushReplacement(MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => QuizBloc(quizRepository: context.read<QuizRepository>())..add(QuizLoadEvent()),
          child:const HomeScreen(),
        )
      ),
      );
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Image.asset(
              "assets/images/science.png",
              width: 100,
              height: 100,
              fit: BoxFit.cover,
            ),
          ),
          spaceHeight(20),
          loading()
        ],
      ),
    );
  }

  
  
}
