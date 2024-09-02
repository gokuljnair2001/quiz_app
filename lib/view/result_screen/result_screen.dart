import 'package:flutter/material.dart';
import 'package:quiz_app/view/home_screen/home_screen.dart';

class ResultScreen extends StatefulWidget {
  const ResultScreen({
    super.key,
    required this.rightAnswerCount,
    required this.wrongAnswerCount,
    required this.currentQuestions,
  });

  final int rightAnswerCount;
  final int wrongAnswerCount;
  final List currentQuestions;

  @override
  State<ResultScreen> createState() => _ResultScreenState();
}

class _ResultScreenState extends State<ResultScreen> {
  int starCount = 0;
  @override
  void initState() {
    calPercentage();
    super.initState();
  }

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Padding(
                padding: EdgeInsets.only(
                    bottom: index == 1 ? 20 : 0, left: 15, right: 15),
                child: Icon(
                  Icons.star,
                  color: index <= 1 ? Colors.yellow : Colors.grey,
                  size: index == 1 ? 80 : 50,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 25,
          ),
          Center(
            child: Text(
              'Congrats !',
              style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w600,
                  fontSize: 25),
            ),
          ),
          Text(
            '${widget.rightAnswerCount} / ${widget.currentQuestions.length}',
            style: TextStyle(fontSize: 30, color: Colors.green),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'correct answer : ${widget.rightAnswerCount} ',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Text(
            'wrong answer : ${widget.wrongAnswerCount}',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          Text(
            'skipped answer : 0',
            style: TextStyle(color: Colors.white, fontSize: 17),
          ),
          SizedBox(
            height: 25,
          ),
          Container(
            height: 40,
            width: 115,
            decoration: BoxDecoration(
                color: Colors.orangeAccent,
                borderRadius: BorderRadius.circular(9),
                border: Border.all(color: Colors.white, width: 3)),
            child: Center(
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => HomeScreen(
                          quesList: widget.currentQuestions,
                        ),
                      ));
                },
                child: Text(
                  'Restart',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 22,
                      fontWeight: FontWeight.w600),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  int calPercentage() {
    double percentage =
        (widget.rightAnswerCount / widget.currentQuestions.length) * 100;
    if (percentage >= 80) {
      return 3;
    } else if (percentage >= 50) {
      return 2;
    } else if (percentage >= 30) {
      return 1;
    } else {
      return 0;
    }
  }
}
