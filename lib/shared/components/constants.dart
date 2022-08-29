import 'package:flutter/material.dart';
import 'package:hr_app/screens/home_screen/home_screen.dart';
import 'package:hr_app/shared/services/local/cahce_helper.dart';

import 'components.dart';

const defaultColor = Colors.blue;

void signOut(context) {
  CacheHelper.remouveData(
    key: 'token',
  ).then((value) {
    navigateAndFinish(
      context,
      const HomeScreen(),
    );
  });
}

void printFullText(String text) {
  final pattern = new RegExp('.{1,800}'); // 800 is the size of each chunk
  pattern.allMatches(text).forEach((match) => print(match.group(0)));
}

String token = '';
