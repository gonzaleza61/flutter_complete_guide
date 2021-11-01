import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

//void main() {
//  runApp(MyApp());
// }
//hello world
//hello github test

void main() => runApp(MyApp());

//variables inside class properties
//functions inside class methods
//format = Shift+Alt+F
//refactor = Ctrl+Shift+R

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    //TODO: implement createState
    return _MyAppState();
  }
}

//underscore the class, property, and method names to make them private
class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;

  void _answerQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
//map {key: values}
    var questions = [
      {
        'questionText': 'What\'s your favorite color?',
        'answers': ['Black', 'Red', 'Green', 'White']
      },
      {
        'questionText': "What\'s your favorite animal?",
        'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
      },
      {
        'questionText': "Who\'s your favorite instructor?",
        'answers': ['Max', 'Max', 'Max', 'Max']
      },
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Day One'),
        ),
        body: Column(
          children: [
            Question(questions[_questionIndex]['questionText']),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
            Answer(_answerQuestion),
          ],
        ),
      ),
    );
  }
}
