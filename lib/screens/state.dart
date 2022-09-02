// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:quiz_app/model/answer.dart';
// import 'package:quiz_app/model/questions.dart';

// class HOmePage extends StatefulWidget {
//   const HOmePage({Key? key}) : super(key: key);

//   @override
//   State<HOmePage> createState() => _HOmePageState();
// }

// class _HOmePageState extends State<HOmePage> {
//   final quizProvider = ChangeNotifierProvider((ref) => QuestionsProvider());
//   int _scoreTracker = 0;
//   // int _questionNumber = 1;
//   int _questionIndex = 0;
//   bool answerSelected = false;
//   bool quizEnded = false;

//   Widget build(BuildContext context) {
//     return Consumer(builder: (context, ref, child) {
//       final quizGetter = ref.watch(quizProvider);
//       void _questionAnswered(bool answerScore) {
//         WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
//               answerSelected = true;
//               if (answerScore) {
//                 _scoreTracker++;
//                 print(_scoreTracker);
//               }
//               // end of the quiz
//               if (_questionIndex + 1 == quizGetter.quiz.length) {
//                 quizEnded == true;
//               }
//             }));
//       }

//       return Scaffold(
//         backgroundColor: Color.fromARGB(255, 251, 235, 235),
//         appBar: AppBar(
//           title: Text("Quiz Master"),
//         ),
//         body: SafeArea(
//             child: Column(
//           children: [
//             SizedBox(
//               height: 15,
//             ),
//             Container(
//               padding: EdgeInsets.only(left: 20, right: 20),
//               child: Text(
//                 "${_scoreTracker}/${quizGetter.quiz.length}",
//                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
//               ),
//             ),
//             Container(
//               width: double.infinity,
//               height: 150,
//               margin: EdgeInsets.only(bottom: 10, left: 30, right: 30, top: 20),
//               padding: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//               decoration: BoxDecoration(
//                 color: Color.fromARGB(255, 123, 250, 222),
//                 borderRadius: BorderRadius.circular(10),
//               ),
//               child: Center(
//                 child: Text(
//                   quizGetter.quiz[_questionIndex]['question'].toString(),
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       color: Color.fromARGB(255, 2, 10, 255),
//                       fontWeight: FontWeight.bold,
//                       fontSize: 19),
//                 ),
//               ),
//             ),
//             ...(quizGetter.quiz[_questionIndex]['answers']
//                     as List<Map<String, Object>>)
//                 .map(
//               (answer) => Answer(
//                 answerText: answer["answerText"].toString(),
//                 answerColor: (answerSelected
//                     ? answer['score'] as bool
//                         ? Colors.green
//                         : Colors.red
//                     : Color.fromARGB(92, 158, 158, 158)),
//                 answerTaped: () {
//                   _questionAnswered(answer['score'] as bool);
//                 },
//               ),
//             ),
//             SizedBox(height: 5),
//             SizedBox(
//               height: 40,
//               width: 100,
//               child: ElevatedButton(
//                 onPressed: () {},
//                 child: Text(
//                   // ignore: dead_code
//                   quizEnded ? "Restart" : "Next",
//                   style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
//                 ),
//               ),
//             ),
//           ],
//         )),
//       );
//     });
//   }
// }
