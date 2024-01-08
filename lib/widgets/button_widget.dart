import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  const Button({
    Key? key,
    required this.label,
    required this.onPressed,
  }) : super(key: key);

  final String label;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 20),
      child: Container(
        width: double.infinity,
        height: 60,
        child: MaterialButton(
          onPressed: onPressed,
          child: Text(label, style: TextStyle(color: Colors.white, fontSize: 15)),
          color: Colors.redAccent,
        ),
      ),
    );
  }
}