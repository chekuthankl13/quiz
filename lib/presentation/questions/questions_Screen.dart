import 'package:flutter/material.dart';
import 'package:quiz/logic/bloc_exports.dart';
import 'package:quiz/models/question_model.dart';
import 'package:quiz/utils/utils.dart';

class QuestionScreen extends StatefulWidget {
  const QuestionScreen({super.key});

  @override
  State<QuestionScreen> createState() => _QuestionScreenState();
}

class _QuestionScreenState extends State<QuestionScreen> {
  ValueNotifier<int> pageIndex = ValueNotifier(0);

  ValueNotifier<int> length = ValueNotifier(0);

  var pagectrl = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<QuizBloc, QuizState>(
        builder: (context, state) {
          if (state is QuizLoading) {
            return loading();
          }

          if (state is QuizQuestionsLoaded) {
            return body(state.questions);
          }
          return loading();
        },
      ),
    );
  }

  body(List<Questions> questions) {
    length.value = questions.length - 1;
    return Stack(
      children: [
        PageView.builder(
          onPageChanged: (value) {
            pageIndex.value = value;
          },
          physics: const NeverScrollableScrollPhysics(),
          controller: pagectrl,
          itemCount: questions.length,
          itemBuilder: (context, index) {
            var data = questions[index];
            return SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    data.question,
                    textAlign: TextAlign.center,
                    style: const TextStyle(
                        fontWeight: FontWeight.w500, fontSize: 15),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Column(
                    children: data.answers
                        .map(
                          (e) => GestureDetector(
                            onTap: () {
                              // ctrl.name(e, ctrl.data[index].correctAnswer);
                              forward();
                            },
                            child: Container(
                              margin: const EdgeInsets.all(10),
                              padding: const EdgeInsets.all(10),
                              height: 50,
                              width: 200,
                              decoration: BoxDecoration(
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey[200]!,
                                    blurRadius: 2
                                  )
                                ],
                                border:
                                    Border.all(color: Colors.lightBlueAccent.withOpacity(.1)),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Center(
                                  child: Text(
                                e,
                                style: const TextStyle(fontSize: 13),
                              )),
                            ),
                          ),
                        )
                        .toList(),
                  )
                ],
              ),
            );
          },
        ),
        Positioned(
          bottom: 45,
          left: 0,
          right: 0,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                questions.length,
                (index) => ValueListenableBuilder(
                      valueListenable: pageIndex,
                      builder: (context, value, child) => Container(
                        margin: const EdgeInsets.only(left: 10),
                        height: 10,
                        width: 10,
                        decoration: BoxDecoration(
                            color:
                                value == index ? Colors.grey : Colors.grey[200],
                            shape: BoxShape.circle),
                      ),
                    )),
          ),
        ),
      ],
    );
  }

  forward() {
    if (islastpage) {
      // Get.offAll(() => ScorePage());
    } else {
      pagectrl.nextPage(
          duration: const Duration(microseconds: 300), curve: Curves.bounceIn);
    }
  }

  bool get islastpage => pageIndex.value == length.value;
}
