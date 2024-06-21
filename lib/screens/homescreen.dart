import 'package:flutter/material.dart';
import 'package:task_3_stopwatch_app/constants/colors.dart';

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
                style: TextStyle(color: swWhite),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                    child: RawMaterialButton(
                  onPressed: () {},
                  shape: const StadiumBorder(side: BorderSide(color: swBlue)),
                  child: const Text(
                    "Start",
                    style: TextStyle(color: swWhite),
                  ),
                )),
                const SizedBox(
                  width: 8.0,
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.flag),
                  color: swWhite,
                ),
                const SizedBox(
                  width: 8.0,
                ),
                Expanded(
                    child: RawMaterialButton(
                  onPressed: () {},
                  fillColor: swBlue,
                  shape: const StadiumBorder(),
                  child: const Text(
                    "Reset",
                    style: TextStyle(color: swWhite),
                  ),
                )),
              ],
            )
          ],
        ),
      )),
    );
  }
}
