import 'package:DevQuiz/challenge/challenge_page.dart';
import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/home/home_controller.dart';
import 'package:DevQuiz/home/home_state.dart';
import 'package:DevQuiz/home/quiz_card/quiz_card_widget.dart';
import 'package:DevQuiz/home/widgets/appbar/appbar_widget.dart';
import 'package:DevQuiz/home/widgets/level_button/level_button_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final controller = HomeController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller.getQuizzes();
    controller.getUser();

    controller.stateNotifier.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    if (controller.state != HomeState.success) {
      return Scaffold(
        body: Container(
          child: Center(
            child: CircularProgressIndicator(
              valueColor: AlwaysStoppedAnimation<Color>(AppColors.green),
            ),
          ),
        ),
      );
    }
    return Scaffold(
      backgroundColor: Color(0xffDCDCE6),
      appBar: AppbarWidget(user: controller.user!),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            SizedBox(height: 24),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                LevelButtonWidget(
                  label: 'Fácil',
                ),
                LevelButtonWidget(
                  label: 'Médio',
                ),
                LevelButtonWidget(
                  label: 'Difícil',
                ),
                LevelButtonWidget(
                  label: 'Perito',
                ),
              ],
            ),
            SizedBox(height: 24),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: controller.quizzes!
                    .map((e) => QuizCardWidget(
                          title: e.title,
                          completed: '${e.questionAnswered}/${e.questions.length}',
                          percentege: e.questionAnswered / e.questions.length,
                          onTap: () => Navigator.push(context, MaterialPageRoute(builder: (_) => ChallengePage(questions: e.questions))),
                        ))
                    .toList(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
