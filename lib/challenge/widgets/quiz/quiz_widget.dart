import 'package:DevQuiz/challenge/widgets/answer/answer_widget.dart';
import 'package:DevQuiz/core/app_text_styles.dart';
import 'package:DevQuiz/shared/models/question_model.dart';
import 'package:flutter/material.dart';

class QuizWidget extends StatelessWidget {
  final QuestionModel question;

  const QuizWidget({Key? key, required this.question}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 64),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              question.title,
              style: AppTextStyles.heading,
            ),
          ),
          SizedBox(height: 24),
          ...question.answers.map(
            (e) => AnswerWidget(
              title: e.title,
              isRight: e.isRight,
              isSelected: false,
            ),
          ),
        ],
      ),
    );
  }
}
