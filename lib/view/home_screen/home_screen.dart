import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:quiz_app/dummydb/dummydb.dart';
import 'package:quiz_app/view/home_screen/widgets/option_card.dart';
import 'package:quiz_app/view/result_screen/result_screen.dart';
import 'package:stop_watch_timer/stop_watch_timer.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  int rightAnswerCount = 0;
  int wrongAnswerCount = 0;
  
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Text(
            '${questionIndex + 1} / ${Dummydb.quesList.length}',
            style: TextStyle(color: Colors.blue),
          )
        ],
      ),
      backgroundColor: Colors.black,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            
            Expanded(
              child: buildQuestion(),
            ),
            SizedBox(
              height: 25,
            ),
            Column(
                children: List.generate(
              4,
              (index) {
                return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: OptionsCard(
                      borderColor: _getcolor(index),
                      onOptionTap: () {
                        if (selectedAnswerIndex == null) {
                          selectedAnswerIndex = index;
                          if (index ==
                              Dummydb.quesList[questionIndex]['answer']) {
                            rightAnswerCount++;
                            print('Right answer count : ${rightAnswerCount}');
                          }

                          print(index);
                          setState(() {
                            if (selectedAnswerIndex ==
                                Dummydb.quesList[questionIndex]['answer']) {
                              rightAnswerCount++;
                            } else {
                              wrongAnswerCount++;
                            }
                          });
                        }
                      },
                      questionIndex: questionIndex,
                      optionIndex: index,
                    ));
              },
            )),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 50),
              child: selectedAnswerIndex == null
                  ? null
                  : InkWell(
                      onTap: () {
                        selectedAnswerIndex = null;
                        if (questionIndex < Dummydb.quesList.length - 1) {
                          setState(() {
                            questionIndex++;
                          });
                        } else {
                          Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ResultScreen(
                                  rightAnswerCount: rightAnswerCount,
                                  wrongAnswerCount: wrongAnswerCount,
                                ),
                              ));
                        }
                      },
                      child: Container(
                        height: 60,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                        child: Center(
                          child: Text(
                            'Next',
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w600,
                                fontSize: 22),
                          ),
                        ),
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }

  Expanded buildQuestion() {
    return Expanded(
      child: Stack(
        children: [
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.5),
                borderRadius: BorderRadius.circular(12)),
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                Dummydb.quesList[questionIndex]['question'],
                style: TextStyle(
                    fontSize: 23,
                    color: Colors.white,
                    fontWeight: FontWeight.w500),
              ),
            ),
          ),
          selectedAnswerIndex == Dummydb.quesList[questionIndex]['answer']
              ? LottieBuilder.asset('assets/lotties/lottie1.json')
              : SizedBox()
        ],
      ),
    );
  }

  Color _getcolor(int index) {
    if (selectedAnswerIndex != null) {
      if (index == Dummydb.quesList[questionIndex]['answer']) {
        return Colors.green;
      }
      if (selectedAnswerIndex == Dummydb.quesList[questionIndex]['answer'] &&
          selectedAnswerIndex == index) {
        return Colors.green;
      } else if (selectedAnswerIndex !=
              Dummydb.quesList[questionIndex]['answer'] &&
          selectedAnswerIndex == index) {
        return Colors.red;
      }
    }
    return Colors.grey;
  }
}
