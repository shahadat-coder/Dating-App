import 'package:dating_app/UI/screens/notification_screen.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:dating_app/widgets/skipButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchFriendsScreen extends StatefulWidget {
  const SearchFriendsScreen({super.key});

  @override
  State<SearchFriendsScreen> createState() => _SearchFriendsScreenState();
}

class _SearchFriendsScreenState extends State<SearchFriendsScreen> {
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
            Center(child: Image.asset('assets/images/people.png',height: 240,width: 240,)),
            const SizedBox(height: 20,),
            const Center(
              child: Text("Search friends",style: TextStyle(
                fontWeight: FontWeight.w900,
                fontSize: 25,
                color: Colors.black,
              ),),
            ),
            const SizedBox(height: 5,),
            const Align(
              alignment: Alignment.center,
              child: Text("You can find friends from your contact lists\nto connected.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black45,
                  fontWeight: FontWeight.w500,
                  fontSize: 15,
                ),),
            ),
            const Spacer(),
            Button(label: 'Access to a contact list', onPressed: () {
              Get.to(const NotificationScreen());
            },),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
