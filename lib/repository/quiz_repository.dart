import 'package:quiz/json/dummy_data.dart';
import 'package:quiz/models/question_model.dart';
import 'package:quiz/models/quiz_model.dart';

class QuizRepository {
  
  Future<QuizModel> loadQuiz() async{
    await Future.delayed(const Duration(seconds: 1));
    var data = QuizModel.fromJson(quizList);
    return data;
    
  }

  Future<QuestionModel> startQuiz({required id}) async{
    await Future.delayed(const Duration(seconds: 1));
     var k = questionList.where((element) => element['category_id'] == id.toString()).toList();
      var data = QuestionModel.fromJson(k);
      return data;
    
  }
}