import 'dart:async';

import 'package:flutter/material.dart';
import 'package:task_3_stopwatch_app/constants/colors.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int milliseconds = 0, seconds = 0, minutes = 0;
  String digitMilliseconds = "000", digitSeconds = "00", digitMinutes = "00";
  Timer? timer;
  bool started = false;
  List laps = [];

  void stop() {
    timer!.cancel();
    setState(() {
      started = false;
    });
  }

  void reset() {
    timer?.cancel();
    setState(() {
      milliseconds = 0;
      seconds = 0;
      minutes = 0;

      digitMilliseconds = "000";
      digitSeconds = "00";
      digitMinutes = "00";
      started = false;
      laps.clear();
    });
  }

  void addLaps() {
    String lap = "$digitMinutes:$digitSeconds:$digitMilliseconds";
    setState(() {
      laps.add(lap);
    });
  }

  void start() {
    started = true;
    timer = Timer.periodic(const Duration(milliseconds: 1), (timer) {
      int localMilliseconds = milliseconds + 1;
      int localSeconds = seconds;
      int localMinutes = minutes;

      if (localMilliseconds > 999) {
        localMilliseconds = 0;
        localSeconds += 1;
      }

      if (localSeconds > 59) {
        localSeconds = 0;
        localMinutes += 1;
      }

      setState(() {
        milliseconds = localMilliseconds;
        seconds = localSeconds;
        minutes = localMinutes;

        digitMilliseconds = milliseconds.toString().padLeft(3, '0');
        digitSeconds = seconds.toString().padLeft(2, '0');
        digitMinutes = minutes.toString().padLeft(2, '0');
      });
    });
  }

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
              Center(
                child: Text(
                  "$digitMinutes:$digitSeconds:$digitMilliseconds",
                  style: const TextStyle(
                      color: swWhite,
                      fontSize: 82.0,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Container(
                height: 400.0,
                decoration: BoxDecoration(
                    color: swBoxColor,
                    borderRadius: BorderRadius.circular(8.0)),
                child: ListView.builder(
                  itemCount: laps.length,
                  itemBuilder: (context, index) {
                    return Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              "Lap N~${index + 1}",
                              style: const TextStyle(
                                  color: swWhite, fontSize: 16.0),
                            ),
                            Text(
                              "${laps[index]}",
                              style: const TextStyle(
                                  color: swWhite, fontSize: 16.0),
                            ),
                          ],
                        ));
                  },
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                      child: RawMaterialButton(
                    onPressed: () {
                      (!started) ? start() : stop();
                    },
                    shape: const StadiumBorder(
                        side: BorderSide(color: swBlue)),
                    child: Text(
                      (!started) ? "Start" : "Pause",
                      style: const TextStyle(color: swWhite),
                    ),
                  )),
                  const SizedBox(
                    width: 8.0,
                  ),
                  IconButton(
                    onPressed: () {
                      addLaps();
                    },
                    icon: const Icon(Icons.flag),
                    color: swWhite,
                  ),
                  const SizedBox(
                    width: 8.0,
                  ),
                  Expanded(
                      child: RawMaterialButton(
                    onPressed: () {
                      reset();
                    },
                    fillColor: swBlue,
                    shape: const StadiumBorder(),
                    child: const Text(
                      "Reset",
                      style: TextStyle(color: swWhite),
                    ),
                  )),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
