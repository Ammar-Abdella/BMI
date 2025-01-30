
import 'package:flutter/material.dart';

class BackgroundContainer extends StatelessWidget {
  final Color Mycolor;
  final Widget? child;
  GestureTapCallback? Touched ;

  BackgroundContainer({super.key, required this.Mycolor, this.child,required this.Touched});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: Touched,
      child: Padding(
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
      ),
    );
  }
}
