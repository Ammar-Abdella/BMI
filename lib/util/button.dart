import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final IconData icon;
  final VoidCallback? pressed;
  MyButton({super.key, required this.icon, this.pressed});
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: pressed,
      constraints: BoxConstraints.tightFor(width: 50.0, height: 50.0),
      fillColor: Color(0xFF4C4f5E),
      shape: CircleBorder(),
      child: Icon(
        icon,
        color: Colors.white,
      ),
    );
    ;
  }
}
