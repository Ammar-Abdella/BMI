
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Color Mycolor;
  final Widget? child;

  const BackgroundContainer({super.key, required this.Mycolor, this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:const  EdgeInsets.all(10.0),
      child: Container(
        decoration: BoxDecoration(
          color: Mycolor,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: child != null
            ? Column(
                mainAxisSize: MainAxisSize.max, 
                children: [
                  Expanded(child: child!),
                ],
              )
            : null,
      ),
    );
  }
}
