import 'package:dating_app/widgets/Interests_Widgets/fifth_widget.dart';
import 'package:dating_app/widgets/Interests_Widgets/first_widget.dart';
import 'package:dating_app/widgets/Interests_Widgets/forth_widget.dart';
import 'package:dating_app/widgets/Interests_Widgets/second_widget.dart';
import 'package:dating_app/widgets/Interests_Widgets/seventh_widget.dart';
import 'package:dating_app/widgets/Interests_Widgets/sixth_widget.dart';
import 'package:dating_app/widgets/Interests_Widgets/third_widget.dart';
import 'package:flutter/material.dart';

class InterestsCategory extends StatefulWidget {
  const InterestsCategory({
    super.key,
  });

  @override
  State<InterestsCategory> createState() => _InterestsCategoryState();
}

class _InterestsCategoryState extends State<InterestsCategory> {




  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        FirstWidget(),
        const SizedBox(
          height: 12,
        ),
        const SecondWidget(),
         const SizedBox(
          height: 12,
        ),
        const ThirdWidget(),
        const SizedBox(
          height: 12,
        ),
        const ForthWidget(),
        const SizedBox(
          height: 12,
        ),
        const FifthWidget(),
        const SizedBox(
          height: 12,
        ),
        const SixthWidget(),
        const SizedBox(
          height: 12,
        ),
        const SeventhWidget(),
      ],
    );
  }
}
