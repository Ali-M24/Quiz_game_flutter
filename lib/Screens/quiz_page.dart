import 'package:flutter/material.dart';
import 'package:quiz_app/Constants/Constants.dart';
import 'package:quiz_app/Screens/score_page.dart';

class QuizPage extends StatefulWidget {
  const QuizPage({super.key});

  @override
  State<QuizPage> createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  var questionlists = getQuestionList();
  int shownQuestionIndex = 0;
  bool isFinalAnswerSubmited = false;
  int correctAnswer = 0;

  getNextQuestion() {
    setState(() {
      if (shownQuestionIndex < questionlists.length - 1) {
        shownQuestionIndex++;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    String questionImageIndex =
        getQuestionList()[shownQuestionIndex].imageNameNumber!;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.indigo[800],
        title:
            Text("سوال ${shownQuestionIndex + 1} از ${questionlists.length}"),
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
            ),
            Image(
              image: AssetImage("assets/images/$questionImageIndex.png"),
              height: 300.0,
            ),
            SizedBox(
              height: 30.0,
            ),
            Text(
              questionlists[shownQuestionIndex].questionTitle!,
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 20.0,
              ),
            ),
            SizedBox(
              height: 30.0,
            ),
            ...List.generate(
              4,
              (index) => getOptionItem(index),
            ),
            SizedBox(
              height: 20.0,
            ),
            if (isFinalAnswerSubmited)
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red[700],
                    minimumSize: Size(200.0, 50.0)),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => SocrePage(
                        correctAnswer: correctAnswer,
                      ),
                    ),
                  );
                },
                child: Text(
                  "مشاهده نتایج کوئیز",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              )
          ],
        ),
      ),
    );
  }

  Widget getOptionItem(int index) {
    return ListTile(
      onTap: () => {
        if (questionlists[shownQuestionIndex].correctAnswer == index)
          {correctAnswer++}
        else
          {print("Wrong!")},
        if (shownQuestionIndex == questionlists.length - 1)
          {isFinalAnswerSubmited = !isFinalAnswerSubmited},
        getNextQuestion()
      },
      title: Text(
        questionlists[shownQuestionIndex].anwerList![index],
        textAlign: TextAlign.right,
      ),
    );
  }
}
