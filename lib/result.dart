import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function resetHandler;

  Result(this.resultScore, this.resetHandler);

  String get resultPhrase {
    String resultText;
    if (resultScore >= 20) {
      resultText = 'You are Awsome';
    } else if (resultScore >= 14) {
      resultText = 'You are Likable';
    } else if (resultScore >= 10) {
      resultText = 'You are a bit Strange';
    } else {
      resultText = 'You are very Bad';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            resultPhrase,
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          RaisedButton(
            onPressed: resetHandler,
            padding: EdgeInsets.zero,
            shape: StadiumBorder(),
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
              decoration: ShapeDecoration(
                gradient: LinearGradient(
                    colors: [Colors.purpleAccent, Colors.pinkAccent]),
                shape: StadiumBorder(),
              ),
              child: Text(
                'Reset ',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold),
              ),
            ),
          ),
          Text(
            'Your Score',
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
          Text(
            resultScore.toString(),
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
