import 'dart:developer';
import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'question_state.dart';

class QuestionCubit extends Cubit<QuestionState> {
  QuestionCubit() : super(QuestionInitial());

int answerClicked({required correctAnswer,required selectedAnswer}){
    if (selectedAnswer ==  correctAnswer) {
      emit( QuestionState(marks:state.marks+1,isCorrect: true ));

      log(state.marks.toString(),name: "state");
      return state.marks;
    }else{
      emit( QuestionState(marks:state.marks,isCorrect: false ));
      return state.marks;

    }
    
 }

 prevClicked(){
    if (state.isCorrect == true) {
      emit(QuestionState(marks:state.marks-1,isCorrect: true ));
    }
 }

}
