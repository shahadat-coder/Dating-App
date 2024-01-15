import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key, required this.onPressed,
  });
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: onPressed,
        child: const Text(
          'Skip',
          style: TextStyle(
              color: Colors.redAccent,
              fontWeight: FontWeight.w400,
              fontSize: 15
          ),
        ));

  }
}