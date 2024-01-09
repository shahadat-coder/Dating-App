import 'package:dating_app/UI/screens/auth/Login_withPhone.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButton extends StatelessWidget {
  const BackButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Get.off(const LoginWithPhoneScreen());
      },
      child: Container(
        height: 52,
        width: 52,
        child: Padding(
          padding: const EdgeInsets.only(left: 12),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.redAccent,
          ),
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade400, width: 1),
        ),
      ),
    );
  }
}