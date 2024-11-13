import 'package:flutter/material.dart';

import 'question.dart';
import 'quiz_brain.dart';

QuizBrain quizBrain = new QuizBrain();

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
                quizBrain.getQuestionText(),
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
                      quizBrain.getQuestionAnswer() == true ?
                        buildIcon(Colors.green, Icons.check) :
                        buildIcon(Colors.red, Icons.close)
                    );
                    
                    quizBrain.nextQuestion();
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
                      quizBrain.getQuestionAnswer() == false ?
                        buildIcon(Colors.green, Icons.check) :
                        buildIcon(Colors.red, Icons.close)
                    );
                    
                    quizBrain.nextQuestion();
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
