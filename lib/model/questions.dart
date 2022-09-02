import 'package:flutter/cupertino.dart';

class QuestionsProvider extends ChangeNotifier {
  final _questions = const [
    {
      //first question
      'question': 'Who among the following wrote Sanskrit grammar ?',
      'answers': [
        {'answerText': 'Kalidasa', 'score': false},
        {'answerText': 'Charak', 'score': false},
        {'answerText': 'Panini', 'score': true},
        {'answerText': 'Aryabhatt', 'score': false},
      ],
    },
    //second question
    {
      'question':
          ' Which among the following headstreams meets the Ganges in last ?',
      'answers': [
        {'answerText': ' Alaknanda', 'score': false},
        {'answerText': 'Pindar', 'score': false},
        {'answerText': 'Mandakini', 'score': false},
        {'answerText': 'Bhagirathi', 'score': true},
      ],
    },
    //third question
    {
      'question': 'Tsunamis are not caused by ?',
      'answers': [
        {'answerText': 'Hurricanes', 'score': true},
        {'answerText': 'Earthquakes', 'score': false},
        {'answerText': 'Undersea landslides', 'score': false},
        {'answerText': 'Volcanic eruptions', 'score': false},
      ],
    },
    //fourth question
    {
      'question':
          ' Where was the electricity supply first introduced in India ?',
      'answers': [
        {'answerText': 'Mumbai ', 'score': false},
        {'answerText': 'Dehradun', 'score': false},
        {'answerText': 'Darjeeling', 'score': true},
        {'answerText': 'Chennai', 'score': false},
      ],
    },
    //fifth question
    {
      'question':
          'Which one of the following ports is the oldest port in India ?',
      'answers': [
        {'answerText': 'Mumbai Port', 'score': false},
        {'answerText': 'Chennai Port', 'score': true},
        {'answerText': 'Kolkata Port', 'score': false},
        {'answerText': 'Vishakhapatnam Port', 'score': false},
      ],
    },
    //sixth question
    {
      'question': 'Hitler party which came into power in 1933 is known as',
      'answers': [
        {'answerText': 'Ku-Klux-Klan', 'score': false},
        {'answerText': 'Democratic Party', 'score': false},
        {'answerText': 'Labour Party', 'score': false},
        {'answerText': 'Nazi Party', 'score': true},
      ],
    },
    //seventh question
    {
      'question': ' Film and TV institute of India is located at ?',
      'answers': [
        {'answerText': 'Pune', 'score': true},
        {'answerText': 'Pimpri', 'score': false},
        {'answerText': 'Perambur', 'score': false},
        {'answerText': 'Rajkot', 'score': false},
      ],
    },
    //eighth question
    {
      'question':
          'First human heart transplant operation conducted by Dr. Christian Bernard on Louis Washkansky, was conducted in ?',
      'answers': [
        {'answerText': '1958', 'score': false},
        {'answerText': '1922', 'score': false},
        {'answerText': '1967', 'score': true},
        {'answerText': '1968', 'score': false},
      ],
    },
    //ninth question
    {
      'question': ' The United Nations Organization has its Headquarters at',
      'answers': [
        {'answerText': 'Bali', 'score': false},
        {'answerText': 'Hague', 'score': false},
        {'answerText': 'New York', 'score': true},
        {'answerText': 'Washington DC', 'score': false},
      ],
    },
    //tenth question
    {
      'question': ' Who created the famous Rock Garden of Chandigarh?',
      'answers': [
        {'answerText': 'Gaudi', 'score': false},
        {'answerText': 'Saarinen', 'score': false},
        {'answerText': 'Krishnarao Jaisim', 'score': false},
        {'answerText': 'Nek Chand', 'score': true},
      ],
    },
  ];
  get quiz => _questions;
}
