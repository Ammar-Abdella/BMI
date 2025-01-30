import 'package:flutter/material.dart';
import 'package:bmi_calculator/util/constants.dart';



class BottomButton extends StatelessWidget {
  const BottomButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
              padding: const EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomHeight,
              color: kbuttonColor,
              child: const Center(
                child: Text(
                  'RE-CALCULATE',
                  style: TextStyle(
                    fontSize: 22.0,
                    color: Colors.white,
                  ),
                ),
              ),
            );
  }
}