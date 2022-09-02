import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:quiz_app/model/questions.dart';
import 'homePage.dart';

class ResultPage extends StatelessWidget {
  const ResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Result "),
      ),
      body: Consumer(
        builder: (context, ref, child) {
          final quizProvider = Provider((ref) {
            return QuestionsProvider();
          });
          final provider = ref.watch(quizProvider);
          return Scaffold(
            body: Column(
              children: [
                SizedBox(
                  height: 250,
                ),
                Text(
                  "Your Result",
                  style: TextStyle(fontSize: 50),
                ),
                Center(
                  child: Text(
                    "${Constant.scoreTracker.toString()}/${provider.quiz.length}",
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 50),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Constant.answerSelected = false;
                    Constant.quizEnded = false;
                    Constant.scoreTracker = 0;
                    Constant.questionIndex = 0;
                    context.go("/");
                  },
                  child: Text("Restart"),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
