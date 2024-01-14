import 'package:dating_app/widgets/button_widget.dart';
import 'package:dating_app/widgets/skipButton.dart';
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50,),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Padding(
              padding: EdgeInsets.only(left: 320),
              child: SkipButton(),
            ),
            const SizedBox(height: 70,),
            Center(child: Image.asset('assets/images/chat.png',height: 240,width: 240,)),
            const SizedBox(height: 20,),
            const Center(
              child: Text("Enable notifications",style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Colors.black,
              ),),
            ),
            const SizedBox(height: 5,),
            const Align(
              alignment: Alignment.center,
              child: Text("Get push-notification when you get the match \nor receive a message.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),),
            ),
            const Spacer(),
            Button(label: 'I want to be notified', onPressed: () {

            },),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
