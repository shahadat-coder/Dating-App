import 'package:flutter/material.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return TextButton(
        onPressed: () {},
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