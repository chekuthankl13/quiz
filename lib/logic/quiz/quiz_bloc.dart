import 'dart:async';
import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:quiz/models/question_model.dart';
import 'package:quiz/models/quiz_model.dart';
import 'package:quiz/repository/quiz_repository.dart';

part 'quiz_event.dart';
part 'quiz_state.dart';

class QuizBloc extends Bloc<QuizEvent, QuizState> {
  final QuizRepository quizRepository;
  QuizBloc({required this.quizRepository}) : super(QuizInitial()) {
    on<QuizEvent>((event, emit) {});

    on<QuizLoadEvent>(_quizLoadEvent);

    on<QuizStartEvent>(_quizStartEvent);
  }

  FutureOr<void> _quizLoadEvent(
      QuizLoadEvent event, Emitter<QuizState> emit) async {
    try {
      emit(QuizLoading());
      var res = await quizRepository.loadQuiz();
      emit(QuizLoaded(quiz: res.quiz));
    } catch (e) {
      throw Exception;
    }
  }

  FutureOr<void> _quizStartEvent(
      QuizStartEvent event, Emitter<QuizState> emit) async {
    try {
      emit(QuizLoading());
      var res = await quizRepository.startQuiz(id: event.quizId);

      emit(QuizQuestionsLoaded(questions: res.questions));
    } catch (e) {
      log(e.toString());
    }
  }
}
