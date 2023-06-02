import 'package:quiz_app/data/Question.dart';

List<Question> getQuestionList() {
  //first Question
  var firstQuestion = Question();
  firstQuestion.questionTitle = "مشهور ترین شعبده باز دنیا کیست؟";
  firstQuestion.imageNameNumber = "1";
  firstQuestion.correctAnswer = 2;
  firstQuestion.anwerList = [
    "علی محمدزاده",
    "دیوید کاپلفیلد",
    "هری هودینی",
    "دیوید بلین"
  ];

  //second Question
  var secondQuestion = Question();
  secondQuestion.questionTitle = "چه کشوری ایستگاه فضایی میر را بنا کرده است؟";
  secondQuestion.imageNameNumber = "2";
  secondQuestion.correctAnswer = 0;
  secondQuestion.anwerList = ["هند", "چین", "آمریکا", "روسیه(شوروی سابق)"];

  return [firstQuestion, secondQuestion];
}
