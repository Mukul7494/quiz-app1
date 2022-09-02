import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/model/answer.dart';
import 'package:quiz_app/model/questions.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final quizProvider = ChangeNotifierProvider((ref) => QuestionsProvider());

  Widget build(BuildContext context) {
    return Consumer(builder: (context, ref, child) {
      final quizGetter = ref.watch(quizProvider);
      void _questionAnswered(bool answerScore) {
        WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
              Constant.answerSelected = true;
              if (answerScore) {
                Constant.scoreTracker++;
              }
              // end of the quiz
              if (Constant.questionIndex + 1 == quizGetter.quiz.length) {
                Constant.quizEnded == true;
              }
            }));
      }

      void _nextQuestion() {
        setState(() {
          // _questionNumber++;
          Constant.questionIndex++;
          Constant.answerSelected = false;
        });
        if (Constant.questionIndex + 1 > quizGetter.quiz.length) {
          print('hellow');
          context.go("/home/resultPage");
        }
      }

      return Scaffold(
        backgroundColor: Color.fromARGB(255, 251, 235, 235),
        appBar: AppBar(
          title: Text("Quiz Master"),
        ),
        body: SafeArea(
            child: Column(
          children: [
            SizedBox(
              height: 15,
            ),
            Container(
              padding: EdgeInsets.only(left: 20, right: 20),
              child: Text(
                "${Constant.questionIndex + 1}/${quizGetter.quiz.length}",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
              ),
            ),
            Container(
              width: double.infinity,
              height: 150,
              margin: EdgeInsets.only(bottom: 10, left: 30, right: 30, top: 20),
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 123, 250, 222),
                borderRadius: BorderRadius.circular(10),
              ),
              child: Center(
                child: Text(
                  quizGetter.quiz[Constant.questionIndex]['question']
                      .toString(),
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      color: Color.fromARGB(255, 2, 10, 255),
                      fontWeight: FontWeight.bold,
                      fontSize: 19),
                ),
              ),
            ),
            ...(quizGetter.quiz[Constant.questionIndex]['answers']
                    as List<Map<String, Object>>)
                .map(
              (answer) => Answer(
                answerText: answer["answerText"].toString(),
                answerColor: (Constant.answerSelected
                    ? answer['score'] as bool
                        ? Colors.green
                        : Colors.red
                    : Color.fromARGB(92, 158, 158, 158)),
                answerTaped: () {
                  _questionAnswered(answer['score'] as bool);
                },
              ),
            ),
            SizedBox(height: 5),
            SizedBox(
              height: 40,
              width: 100,
              child: ElevatedButton(
                onPressed: _nextQuestion,
                child: Text(
                  "Next",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
            ),
          ],
        )),
      );
    });
  }
}

class Constant {
  static int scoreTracker = 0;
  static int questionIndex = 0;
  static bool answerSelected = false;
  static bool quizEnded = false;
}
