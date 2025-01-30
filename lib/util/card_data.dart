import 'package:flutter/material.dart';

class MyCard extends StatelessWidget {

  final IconData Myicon;
  final String text;


   const MyCard({super.key, required this.Myicon, required this.text});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          Myicon,
          size: 100.0,
          color: Colors.white,
        ),
        Text(
          text,
          style: Theme.of(context).textTheme.bodyLarge,
        )
      ],
    );
  }
}
