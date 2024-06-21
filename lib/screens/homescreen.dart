import 'package:flutter/material.dart';
import 'package:task_3_stopwatch_app/constants/colors.dart';
import 'package:task_3_stopwatch_app/widgets/buttons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Center(
              child: Text(
                "Flutter StopWatch App",
                style: TextStyle(
                    color: swWhite,
                    fontSize: 28.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Center(
              child: Text(
                "00:00:00",
                style: TextStyle(
                    color: swWhite,
                    fontSize: 82.0,
                    fontWeight: FontWeight.bold),
              ),
            ),
            Container(
              height: 400.0,
              decoration: BoxDecoration(
                  color: swBoxColor, borderRadius: BorderRadius.circular(8.0)),
            ),
            const SizedBox(
              height: 20,
            ),
            const SWButtons()
          ],
        ),
      )),
    );
  }
}
