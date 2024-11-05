import 'package:flutter/material.dart';

import 'question.dart';

void main() => runApp(Quizzler());

class Quizzler extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.grey.shade900,
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 10.0),
            child: QuizPage(),
          ),
        ),
      ),
    );
  }
}

class QuizPage extends StatefulWidget {
  @override
  _QuizPageState createState() => _QuizPageState();
}

class _QuizPageState extends State<QuizPage> {
  Icon buildIcon(colorInput, icon) {
    return Icon(
      icon,
      color: colorInput
    );
  }

  int questionNumber = 0;
  List<Question> questions = [
    Question(q: "1+1=2", a: true),
    Question(q: "9 < 6", a: false),
    Question(q: "Dependency Injection is a programming technique that makes a class independent of its dependencies", a: true),
  ];

  Question q1 = new Question(q: "1+1=2", a: true); 

  List<Icon> scoreKeeper = [];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[
        Expanded(
          flex: 5,
          child: Padding(
            padding: EdgeInsets.all(10.0),
            child: Center(
              child: Text(
                questions[questionNumber].questionText,
                style: TextStyle(
                  fontSize: 25.0,
                  color: Colors.white
                ),
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              color: Colors.green,
              child: TextButton(
                onPressed: () => 
                  setState(() {
                    scoreKeeper.add(
                      questions[questionNumber].questionAnswer == true ?
                        buildIcon(Colors.green, Icons.check) :
                        buildIcon(Colors.red, Icons.close)
                    );
                    
                    questionNumber++;
                  }),
                child: Container(
                  child: Text("True", style: TextStyle(color: Colors.white)),
                )
              ),
            ),
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.all(15.0),
            child: Container(
              color: Colors.red,
              child: TextButton(
                onPressed: () => 
                  setState(() {
                    scoreKeeper.add(
                      questions[questionNumber].questionAnswer == false ?
                        buildIcon(Colors.green, Icons.check) :
                        buildIcon(Colors.red, Icons.close)
                    );
                    
                    questionNumber++;
                  }),
                child: Container(
                  child: Text("False", style: TextStyle(color: Colors.white)),
                ),
              ),
            ),
          ),
        ),
        Row(
          children: scoreKeeper,
        ),
      ],
    );
  }
}

/*
question1: 'You can lead a cow down stairs but not up stairs.', false,
question2: 'Approximately one quarter of human bones are in the feet.', true,
question3: 'A slug\'s blood is green.', true,
*/
