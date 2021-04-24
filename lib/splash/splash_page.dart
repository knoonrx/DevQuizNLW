import 'package:DevQuiz/core/app_colors.dart';
import 'package:DevQuiz/core/app_gradients.dart';
import 'package:DevQuiz/core/app_images.dart';
import 'package:DevQuiz/home/home_page.dart';
import 'package:flutter/material.dart';

class SplashPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration(seconds: 2)).then(
      (value) => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => HomePage()),
      ),
    );
    return Scaffold(
      body: Container(
        width: double.maxFinite,
        decoration: BoxDecoration(
          gradient: AppGradients.linear,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(AppImages.logo),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.only(right: 22.0),
              child: CircularProgressIndicator(
                strokeWidth: 2,
                backgroundColor: AppColors.green,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
