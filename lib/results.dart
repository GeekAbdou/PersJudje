import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 24) {
      resultText = 'You are sociable and successful person!';
    } else if (resultScore >= 20) {
      resultText = 'You are Awsome and successful.';
    } else if (resultScore >= 15) {
      resultText = 'You are ... Likable.';
    } else if (resultScore >= 10) {
      resultText = 'You are not bad one , But need to work on yourself.';
    } else if (resultScore >= 7) {
      resultText = 'You are ..Strange ?';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 200.0),
      padding: EdgeInsets.only(left: 10.0, right: 10.0),
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            child: Text(
              'Restart Quiz!',
            ),
            color: Colors.blue,
            textColor: Colors.white,
            onPressed: resetHandler,
          ),
        ],
      ),
    );
  }
}
