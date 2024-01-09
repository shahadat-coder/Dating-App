import 'package:dating_app/UI/screens/auth/Login_withPhone.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 120),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,

          children: [
            Image.asset('assets/images/Logo.png',height: 150,width: 150,),
            const SizedBox(height: 30,),
            const Text("Sign Up to continue",style: TextStyle(
              fontFamily: 'FontAmr',
              fontWeight: FontWeight.bold,
              fontSize: 25,
              color: Colors.black,
            ),),
            const SizedBox(height: 15,),
            Button(label: "Continue to email", onPressed: (){}),
            const SizedBox(height: 15,),
            InkWell(
              onTap: (){
                Get.to(const LoginWithPhoneScreen());
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40,),
                child: Container(
                  decoration: BoxDecoration(
                    border: Border.all(color: Colors.grey.shade300,width: 1),
                  ),
                  height: 60,
                  width: double.infinity,
                  child: const Center(
                    child: Text("Use phone number",textAlign:TextAlign.center,style: TextStyle(
                      fontWeight: FontWeight.w600,
                      fontSize: 17,
                      color: Colors.redAccent,
                    ),),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 40,),
            Image.asset('assets/images/or login with.png',),
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.only(left: 80),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300,width: 1),
                      ),
                      width: 64,
                      height: 64,
                      child: Image.asset('assets/images/facebook.png'),
                    ),
                  ),

                  InkWell(
                      onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300,width: 1),
                      ),
                      width: 64,
                      height: 64,
                      child: Image.asset('assets/images/google.png'),
                    ),
                  ),

                  InkWell(
                      onTap: (){},
                    child: Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.grey.shade300,width: 1),
                      ),
                      width: 64,
                      height: 64,
                      child: Image.asset('assets/images/apple.png'),
                    ),
                  ),
                  SizedBox(width: 50,),
                ],
              ),
            ),
            const Spacer(),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: (){},
                  child: const Text(
                    'Terms of use',
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),
                ),
                const SizedBox(width: 60),
                InkWell(
                  onTap: (){},
                  child: const Text(
                    'Privacy Policy',
                    style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 60)

          ],
        ),
      ),
    );
  }
}
