import 'dart:developer';
import 'package:flutter/material.dart';
import 'package:quiz/logic/bloc_exports.dart';
import 'package:quiz/models/quiz_model.dart';
import 'package:quiz/presentation/questions/questions_Screen.dart';
import 'package:quiz/utils/utils.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          if (state is QuizLoading) {
            return loading();
          }

          if (state is QuizLoaded) {
            return body(state.quiz);
          }

          return loading();
        },
      ),
    );
  }

  SafeArea body(List<Quiz> quiz) {
    return SafeArea(
      child: Column(
        children: [
          spaceHeight(20),
          Row(
            children: [
              spaceWidth(5),
              Image.asset(
                "assets/images/science.png",
                width: 40,
                height: 40,
                fit: BoxFit.cover,
              ),
              spaceWidth(10),
              const Expanded(
                child: Text(
                  "Let me challenge you with your knowledge!",
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
          spaceHeight(5),
          Expanded(
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: quiz.length,
              itemBuilder: (context, index) {
                var data = quiz[index];
                return GestureDetector(
                  onTap: () {
                    log(data.toString());
                    navigatorKey.currentState!.pushReplacement(
                      MaterialPageRoute(
                          builder: (context) => BlocProvider(
                                create: (context) => QuizBloc(
                                    quizRepository:
                                        context.read<QuizRepository>())
                                  ..add(QuizStartEvent(quizId: data.quizId)),
                                child: const QuestionScreen(),
                              )),
                    );
                  },
                  child: Card(
                    surfaceTintColor: Colors.white,
                    elevation: 2,
                    margin: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          spaceHeight(5),
                          Text(
                            data.quizDescription.toString(),
                            maxLines: 2,
                            textAlign: TextAlign.start,
                            overflow: TextOverflow.ellipsis,
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w400,
                                color: Colors.grey),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              OutlinedButton(
                                onPressed: () {},
                                style: OutlinedButton.styleFrom(
                                    side: const BorderSide(
                                        color: Colors.greenAccent),
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    minimumSize: Size(60, 30),
                                    foregroundColor: Colors.blueAccent),
                                child: Text(
                                  data.quizCategory.toString(),
                                  style: const TextStyle(
                                      fontSize: 9, fontWeight: FontWeight.w400),
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
