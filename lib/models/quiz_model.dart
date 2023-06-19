// ignore_for_file: public_member_api_docs, sort_constructors_first
class QuizModel {
  final List<Quiz> quiz;
  QuizModel({
    required this.quiz,
  });

  factory QuizModel.fromJson(List<Map<String, String>>json)=>QuizModel(
    quiz:List<Quiz>.from( (json).map((e) => Quiz.fromJson(e)))
  
   );
}

class Quiz {
  final String quizId;
  final String quizDescription;
  final String quizCategory;
  Quiz(
      {required this.quizId,
      required this.quizCategory,
      required this.quizDescription});

  factory Quiz.fromJson(Map<String, dynamic> json) => Quiz(
      quizId: json['id'].toString(),
      quizCategory: json['category'],
      quizDescription: json['description']);
}
