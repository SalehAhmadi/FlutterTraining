import 'package:flutter/material.dart';

class CustomRaisedButton extends StatelessWidget {
  const CustomRaisedButton(
      {required this.child,
      required this.color,
      this.borderRadius = 2.0,
      required this.onPressed,
      this.height = 50.0,
      Key? key})
      : super(key: key);

  final Widget child;
  final Color color;
  final double borderRadius;
  final double height;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      child: RaisedButton(
        onPressed: onPressed,
        color: color,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(borderRadius))),
        child: child,
      ),
    );
  }
}
