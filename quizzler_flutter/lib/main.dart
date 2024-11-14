import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

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
  List<Icon> scoreKeeper = [];

  Icon buildIcon(colorInput, icon) {
    return Icon(
      icon,
      color: colorInput
    );
  }

  checkAnswer(answer) {
    setState(() {
      if (quizBrain.endOfQuestions()) {
        Alert(
          context: context,
          title: 'Finished!',
          desc: 'You\'ve reached the end of the quiz.',
        ).show();

        quizBrain.reset();
        scoreKeeper = [];
      }
      else {
        scoreKeeper.add(
          quizBrain.getQuestionAnswer() == answer ?
            buildIcon(Colors.green, Icons.check) :
            buildIcon(Colors.red, Icons.close)
        );
        quizBrain.nextQuestion();
      }
    });
  }

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
                  checkAnswer(true),
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
                  checkAnswer(false),
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
        // AlertDialog(
        //   title: Text('Finished'),
        //   content: Text('Great Job finishing the quiz!'),
        //   actions: [
        //     TextButton(
        //       onPressed: () => Navigator.pop(context, 'RESTART'),
        //       child: Text('Restart')
        //     ),
        //   ],
        // )
      ],
    );
  }
}
