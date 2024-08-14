import 'package:flutter/material.dart';
import 'package:quiz_app/dummydb/dummydb.dart';
import 'package:quiz_app/view/home_screen/widgets/option_card.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int? selectedAnswerIndex;
  int questionIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        actions: [
          Text(
            '1/10',
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
                          print(index);
                          setState(() {});
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
                          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                            content: Text(
                              'Thanks',
                              style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  color: Colors.white,
                                  fontSize: 25),
                            ),
                            backgroundColor: Colors.red,
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

  Container buildQuestion() {
    return Container(
      height: 200,
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(.5),
          borderRadius: BorderRadius.circular(12)),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
        child: SingleChildScrollView(
          child: Text(
            Dummydb.quesList[questionIndex]['question'],
            style: TextStyle(
                fontSize: 23, color: Colors.white, fontWeight: FontWeight.w500),
          ),
        ),
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
