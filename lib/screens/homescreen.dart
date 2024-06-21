import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_3_stopwatch_app/constants/colors.dart';
import 'package:task_3_stopwatch_app/widgets/buttons.dart';
import 'package:task_3_stopwatch_app/widgets/lapswidget.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int seconds = 0, minutes = 0, hours = 0;
  String digitSeconds = "00", digitMinutes = "00", digitHours = "00";
  Timer? timer;
  bool started = false;
  
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Text(
                "Flutter StopWatch App",
                style: TextStyle(
                    color: swWhite,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            SizedBox(
              height: 20.0,
            ),
            Center(
              child: Text(
                "00:00:00",
                style: TextStyle(
                    color: swWhite,
                    fontSize: 82.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            LapsBox(),
            SizedBox(
              height: 20,
            ),
            SWButtons()
          ],
        ),
      )),
    );
  }
}
