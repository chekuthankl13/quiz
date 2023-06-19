// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'quiz_bloc.dart';

abstract class QuizState extends Equatable {
  const QuizState();
  
  @override
  List<Object> get props => [];
}

class QuizInitial extends QuizState {}

class QuizLoading extends QuizState {}


class QuizLoaded extends QuizState {
  final List<Quiz> quiz;
const  QuizLoaded({
    required this.quiz,
  });

   @override
  List<Object> get props => [quiz];
}

class QuizQuestionsLoaded extends QuizState {
  final List<Questions> questions;
 const QuizQuestionsLoaded({
    required this.questions,
  });

   @override
  List<Object> get props => [questions];
}

class QuizSubmited extends QuizState {}


