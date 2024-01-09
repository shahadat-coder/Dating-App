import 'dart:async';

import 'package:dating_app/UI/screens/Profile_Details.dart';
import 'package:dating_app/UI/screens/auth/Login_withPhone.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class OtpScreen extends StatefulWidget {
  const OtpScreen({super.key});

  @override
  State<OtpScreen> createState() => _OtpScreenState();
}
class _OtpScreenState extends State<OtpScreen> {

  final GlobalKey<FormState> _globalKey = GlobalKey();
  final TextEditingController _pinController = TextEditingController();

  int _secondsRemaining = 60;
  late Timer _timer;

  @override
  void initState() {
    super.initState();
    startTimer();
  }

  void startTimer() {
    const oneSecond = Duration(seconds: 1);
    _timer = Timer.periodic(
      oneSecond,
          (Timer timer) {
        if (_secondsRemaining == 0) {
          timer.cancel();
        } else {
          setState(() {
            _secondsRemaining--;
          });
        }
      },
    );
  }

  void resetTimer() {
    setState(() {
      _secondsRemaining = 60;
    });
    startTimer();
  }

  @override
  void dispose() {
    _timer.cancel();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
            InkWell(
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
            ),
            SizedBox(
              height: 50,
            ),
        
                Text("Enter OTP Code ",style: TextStyle(
                  fontWeight: FontWeight.w900,
                  fontSize: 25,
                  color: Colors.black,
                ),),
                const SizedBox(height: 5,),
                const Text("Type the verification code we've sent you ",
                  style: TextStyle(
                    color: Colors.black45,
                    fontWeight: FontWeight.w500,
                    fontSize: 15,
                  ),),
                SizedBox(
                  height: 20,
                ),
        
                          Center(
                            child: Form(
                key: _globalKey,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 8.0,
                    horizontal: 10,
                  ),
                  child: PinCodeTextField(
                    controller: _pinController,
                    length: 6,
                    obscureText: false,
                    animationType: AnimationType.fade,
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    keyboardType: TextInputType.number,
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      borderRadius: BorderRadius.circular(5),
                      fieldHeight: 50,
                      fieldWidth: 50,
                      activeFillColor: Colors.white,
                      inactiveFillColor: Colors.white,
                      selectedFillColor: Colors.white,
                      activeColor: Colors.redAccent,
                      inactiveColor: Colors.grey,
                      selectedColor: Colors.black45,
                    ),
                    validator: (String? value) {
                      if (value?.isEmpty ?? true) {
                        return "Enter the OTP sent to your email";
                      }
                      return null;
                    },
                    animationDuration: const Duration(milliseconds: 300),
                    backgroundColor: Colors.transparent,
                    enableActiveFill: true,
                    onCompleted: (v) {},
                    onChanged: (value) {},
                    beforeTextPaste: (text) {
                      return false;
                    },
                    appContext: context,
                  ),
                ),
                            ),
                          ),
                Center(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      if (_secondsRemaining > 0)
                        RichText(
                          text: TextSpan(
                            style: const TextStyle(color: Colors.grey),
                            children: [
                              const TextSpan(text: 'This code will expire in '),
                              TextSpan(
                                text:
                                '${_secondsRemaining}s',
                                // Pluralize "second" if needed
                                style: const TextStyle(
                                  color: Colors.redAccent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ],
                          ),
                        ),
                      if (_secondsRemaining == 0)
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            const Text('Code has expired',
                                style: TextStyle(color: Colors.grey)),
                            TextButton(
                              onPressed: () {
                                resetTimer();
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.redAccent,
                              ),
                              child: const Text('Resend Code'),
                            ),
                          ],
                        ),
                    ],
                  ),
                ),
                SizedBox(height: 25,),
                Button(label: 'Continue', onPressed: (){
                  Get.to(const ProfileDetailsScreen());
                })
        
          ]),
        ),
      ),
    );
  }
}
