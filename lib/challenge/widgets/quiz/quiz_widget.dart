import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final String title;

  const QuizWidget({Key? key, required this.title}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              title,
              style: AppTextStyles.heading,
            ),
          ),
          SizedBox(height: 16),
          AnswerWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente',
            isRight: false,
            isSelected: false,
          ),
          AnswerWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente',
            isRight: false,
            isSelected: true,
          ),
          AnswerWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente',
            isRight: true,
            isSelected: true,
          ),
          AnswerWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente',
            isRight: true,
            isSelected: true,
          ),
          AnswerWidget(
            title: 'Possibilita a criação de aplicativos compilados nativamente',
            isRight: true,
            isSelected: true,
          ),
        ],
      ),
    );
  }
}
