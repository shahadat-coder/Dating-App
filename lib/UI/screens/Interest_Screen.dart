import 'package:dating_app/UI/screens/Gender_screen.dart';
import 'package:dating_app/widgets/backButton.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:dating_app/widgets/Interests_Widgets/interests_category.dart';
import 'package:dating_app/widgets/skipButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class InterestScreen extends StatefulWidget {
  const InterestScreen({super.key});

  @override
  State<InterestScreen> createState() => _InterestScreenState();
}

class _InterestScreenState extends State<InterestScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonAll(
                    onClick: () {
                      Get.off(const GenderScreen());
                    },
                  ),
                  const SkipButton(),
                ],
              ),
              const SizedBox(height: 30,),

              const Text("Your interests",style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Colors.black,
              ),),
              const SizedBox(height: 5,),
              const Text("Select a few of your interests and let everyone\nknow what you're passionate about.",
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),),
              const SizedBox(height: 30,),
              const InterestsCategory(),
              const SizedBox(height: 100,),
              Button(label: "Continue", onPressed: (){}),


            ],
          ),
        ),
      ),
    );
  }
}


