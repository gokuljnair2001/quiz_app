import 'package:flutter/material.dart';
import 'package:quiz_app/dummydb/dummydb.dart';

class OptionsCard extends StatelessWidget {
  const OptionsCard({
    super.key,
    required this.questionIndex,
    required int this.optionIndex,
    this.onOptionTap,
    required this.borderColor,
  });

  final int questionIndex;
  final int optionIndex;
  final void Function()? onOptionTap;
  final Color borderColor;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onOptionTap,
      child: Container(
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
            color: Colors.black,
            border: Border.all(color: borderColor, width: 3),
            borderRadius: BorderRadius.circular(12)),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Text(
                Dummydb.quesList[questionIndex]['options'][optionIndex],
                style: TextStyle(color: Colors.white, fontSize: 22),
              ),
              Spacer(),
              CircleAvatar(
                radius: 10,
                child: CircleAvatar(
                  radius: 8,
                  backgroundColor: Colors.black,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
