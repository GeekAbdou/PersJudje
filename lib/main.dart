import 'package:flutter/material.dart';

import './quiz.dart';
import './results.dart';


void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  final _questions = const [
    {
      'questionText' : 'How much you enjoy vibrant social events with lots of people ?',
      'answers' : [
        {'text' : 'Happy' , 'score' : 5},
        {'text' : 'Sad' , 'score' : 1},
        {'text' : 'shy' , 'score' : 3},
        {'text' : 'Angry' , 'score' : 0},
      ]
    },
    {
      'questionText' : 'If you have to temporarily put your plans on hold, you make sure it is your top priority to get back on track as soon as possible ?',
      'answers' : [
        {'text' : 'Yes' , 'score' : 5},
        {'text' : 'Yes as soon as possible ' , 'score' : 3},
        {'text' : 'No' , 'score' : 0},
        {'text' : 'Yes but forgot to continue' , 'score' : 2},

      ]
    },
    {
      'questionText' : 'It would be a challenge for you to spend the whole weekend all by yourself without feeling bored ?',
      'answers' : [
        {'text' : 'Yes' , 'score' : 5},
        {'text' : 'No' , 'score' : 1},
      ]
    },
    {
      'questionText' : 'You are dedicated and focused on your goals, only rarely getting sidetracked.  ?',
      'answers' : [
        {'text' : 'Yes Focused alwayes' , 'score' : 5},
        {'text' : 'Yes but my eyes on other tarcks' , 'score' : 3},
        {'text' : 'No , changing freqently' , 'score' : 2},
        {'text' : 'No' , 'score' : 0},
      ]
    },
  ];
  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {


    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('personality Judgement Test'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
          answerQuestion: _answerQuestion,
          questionIndex: _questionIndex,
          questions: _questions,
        )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
