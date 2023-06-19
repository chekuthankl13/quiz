// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'question_cubit.dart';

 class QuestionState extends Equatable {
  final int marks;
  final bool isCorrect;
  const QuestionState({ this.marks = 0,this.isCorrect = false});

  @override
  List<Object> get props => [marks];
}

class QuestionInitial extends QuestionState {}

// class QuestionSelected extends QuestionState {
//   final int marks;
//  const QuestionSelected({
//     required this.marks,
//   });

//  @override
//   List<Object> get props => [marks];

// }

