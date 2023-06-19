// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'quiz_bloc.dart';

abstract class QuizEvent extends Equatable {
  const QuizEvent();

  @override
  List<Object> get props => [];
}

class QuizLoadEvent extends QuizEvent {}

class QuizStartEvent extends QuizEvent {
  final String quizId;
  const QuizStartEvent({
    required this.quizId,
  });

  @override
  List<Object> get props => [quizId];
}

class QuizSubmitEvent extends QuizEvent {
  final String marks;
  const QuizSubmitEvent({
    required this.marks,
  });

  @override
  List<Object> get props => [marks];
}
