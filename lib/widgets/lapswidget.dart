import 'package:flutter/material.dart';
import 'package:task_3_stopwatch_app/constants/colors.dart';

class LapsBox extends StatelessWidget {
  const LapsBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 400.0,
      decoration: BoxDecoration(
          color: swBoxColor, borderRadius: BorderRadius.circular(8.0)),
    );
  }
}