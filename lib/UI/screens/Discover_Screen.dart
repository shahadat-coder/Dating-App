import 'package:dating_app/UI/screens/notification_screen.dart';
import 'package:dating_app/widgets/select_row.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/backButton.dart';
import '../../widgets/settingButton.dart';

class DiscoverScreen extends StatefulWidget {
  const DiscoverScreen({super.key});

  @override
  State<DiscoverScreen> createState() => _DiscoverScreenState();
}
class _DiscoverScreenState extends State<DiscoverScreen> {

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
                      Get.off(const NotificationScreen());
                    },
                  ),
                  const Column(
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Chicago, ll",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SettingsButton(),
                ],
              ),
              const SizedBox(height: 35,),
              Center(
                child: Container(
                  width: 295,
                  height: 450,
                  decoration:  BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: const DecorationImage(
                        image: AssetImage('assets/images/black_girl.png'),
                      fit:BoxFit.cover,
                    ),
                  ),
                  child: Container(

                    margin: const EdgeInsets.only(top: 380,bottom: 3,left: 3,right: 3),
                    color: Colors.black26,
                    child: const Padding(
                      padding: EdgeInsets.only(left: 10,top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jessica Parker, 23',style: TextStyle(
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.white
                          ),),
                          SizedBox(height: 2,),
                          Text('Professional model',style: TextStyle(
                              fontWeight: FontWeight.w800,
                              fontSize: 12,
                              color: Colors.white70,
                          ),),

                        ],
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 50,),
              const SelectRow()
            ],
          ),
        ),
    );
  }

}


