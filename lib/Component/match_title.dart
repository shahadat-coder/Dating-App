
import 'package:dating_app/utils/constants/colors.dart';
import 'package:dating_app/utils/constants/padding_all.dart';
import 'package:flutter/material.dart';

class MatchTitle extends StatelessWidget {
  final String title;

  const MatchTitle({
    Key? key,
    required this.title,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        const Expanded(child: Divider(color: bgBorder,)),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: defaultMediumPadding),
          child: Text(title, style: const TextStyle(fontSize: 12),),
        ),
        const Expanded(child: Divider(color: bgBorder,)),
      ],
    );
  }
}