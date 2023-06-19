import 'package:flutter/material.dart';
import 'package:quiz/logic/bloc_exports.dart';
import 'package:quiz/presentation/home/home_Screen.dart';
import 'package:quiz/utils/utils.dart';

class ResultScreen extends StatefulWidget {
  final String marks;
  const ResultScreen({required this.marks, super.key});

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'Congrats',
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 50,
          ),
          Text('${widget.marks}/ 5',
              style: const TextStyle(fontSize: 50, color: Colors.grey)),
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {
                 navigatorKey.currentState!.pushReplacement(MaterialPageRoute(
        builder: (context) => BlocProvider(
          create: (context) => QuizBloc(quizRepository: context.read<QuizRepository>())..add(QuizLoadEvent()),
          child:const HomeScreen(),
        )
      ),
      );
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.lightGreen),
                icon: const Icon(
                  Icons.timer,
                  color: Colors.white,
                ),
                label: const Text(
                  'Retake Quiz',
                  style: TextStyle(fontSize: 15, color: Colors.white),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
