import 'package:dating_app/UI/screens/Interest_Screen.dart';
import 'package:dating_app/UI/screens/Profile_Details.dart';
import 'package:dating_app/widgets/backButton.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:dating_app/widgets/skipButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GenderScreen extends StatefulWidget {
  const GenderScreen({super.key});

  @override
  State<GenderScreen> createState() => _GenderScreenState();
}

class _GenderScreenState extends State<GenderScreen> {
  int _value = 0;
  Color womanContainerBorderColor = Colors.grey.shade400;
  Color manContainerBorderColor = Colors.grey.shade400;
  Color othersContainerBorderColor = Colors.grey.shade400;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                BackButtonAll(
                  onClick: () {
                    Get.off(const ProfileDetailsScreen());
                  },
                ),
                 SkipButton(onPressed: () {  },),
              ],
            ),
            const SizedBox(height: 30,),
            const Text(
              "I am a ",
              style: TextStyle(
                fontWeight: FontWeight.w800,
                fontSize: 25,
                color: Colors.black,
              ),
            ),
            const SizedBox(height: 60,),
            buildRadioButton("Woman", 1, womanContainerBorderColor),
            const SizedBox(height: 10,),
            buildRadioButton("Man", 2, manContainerBorderColor),
            const SizedBox(height: 10,),
            buildRadioButton("Others", 3, othersContainerBorderColor),
            const Spacer(),
            Button(label: "Continue", onPressed: () {
              Get.to(const InterestScreen());
            }),
            const SizedBox(height: 15,),
          ],
        ),
      ),
    );
  }

  Widget buildRadioButton(String label, int value, Color containerBorderColor) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Container(
        height: 60,
        width: double.infinity,
        decoration: BoxDecoration(
          border: Border.all(color: containerBorderColor, width: 2),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white,
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 10, right: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: const TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.w400,
                  color: Colors.black,
                ),
              ),
              Radio(
                activeColor: Colors.redAccent,
                value: value,
                groupValue: _value,
                onChanged: (newValue) {
                  setState(() {
                    _value = newValue as int;
                    // Change container border color based on the selected radio button
                    if (_value == 1) {
                      womanContainerBorderColor = Colors.redAccent.shade100;
                      manContainerBorderColor = Colors.grey.shade400;
                      othersContainerBorderColor = Colors.grey.shade400;
                    } else if (_value == 2) {
                      womanContainerBorderColor = Colors.grey.shade400;
                      manContainerBorderColor = Colors.redAccent.shade100;
                      othersContainerBorderColor = Colors.grey.shade400;
                    } else if (_value == 3) {
                      womanContainerBorderColor = Colors.grey.shade400;
                      manContainerBorderColor = Colors.grey.shade400;
                      othersContainerBorderColor = Colors.redAccent.shade100;
                    }
                  });
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
