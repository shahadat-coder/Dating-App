import 'package:dating_app/UI/onborderings/onbordaring.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

class SplashPage extends StatefulWidget {
  SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}


class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(seconds: 6),).then((value) => Get.to(const OnbordaringScreen()));
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Spacer(),
          Center(
            child: Lottie.asset('assets/images/love.json'),
             
            ),
          const Spacer(),
          const CircularProgressIndicator(color: Colors.redAccent,),
          const SizedBox(height: 16),
          const Text('Version 1.0.0'),
          const SizedBox(height: 16)
        ],
      ),
    );
  }
}
