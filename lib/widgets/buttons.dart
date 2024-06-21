import 'package:flutter/material.dart';
import 'package:task_3_stopwatch_app/constants/colors.dart';

class SWButtons extends StatelessWidget {
  const SWButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
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
    );
  }
}
