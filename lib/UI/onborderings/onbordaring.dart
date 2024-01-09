import 'package:dating_app/UI/screens/auth/SignUp_Screen.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:fan_carousel_image_slider/fan_carousel_image_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnbordaringScreen extends StatefulWidget {
  const OnbordaringScreen({Key? key}) : super(key: key);

  static const List<String> sampleImages = [
    "https://stylecaster.com/wp-content/uploads/2013/01/ladyaddict_larocheposay-copia-750x1125_zps5mkydwri.jpg",
    "https://img.freepik.com/premium-photo/pretty-nice-young-man-model-with-hairstyle-trendy-white-t-shirt-blue-fashion-jeans-posing-chair-near-vintage-wall-indoors-handsome-guy-casual-stylish-clothes-is-rests-studio-youth-look_338491-9429.jpg",
    "https://i.pinimg.com/736x/26/01/20/260120c0a86197c1262e21ccde4b5707.jpg",
    "https://images.news18.com/ibnlive/uploads/2015/10/gazi8.jpg",
    "https://watermark.lovepik.com/photo/20211202/large/lovepik-foreign-elegant-female-black-and-white-portrait-picture_501410022.jpg",
  ];

  @override
  State<OnbordaringScreen> createState() => _OnbordaringScreenState();
}

class _OnbordaringScreenState extends State<OnbordaringScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 40),
            child: FanCarouselImageSlider(
              sidesOpacity: 0,
              imageRadius: 20,
              imagesLink: OnbordaringScreen.sampleImages,
              isAssets: false,
            ),
          ),
          const SizedBox(height: 20,),
          const Text("It's Your Time",style: TextStyle(
            fontFamily: 'FontAmr',
            fontWeight: FontWeight.bold,
            fontSize: 30,
            color: Colors.redAccent,
          ),),
          const SizedBox(height: 5,),
          const Text("Finding love, one swipe at a time.\n Here's to endless connections,shared smiles.",
            maxLines: 2,
            textAlign: TextAlign.center,
            style: TextStyle(
            color: Colors.black45,
              fontWeight: FontWeight.w500,
              fontSize: 15,
          ),),
          const SizedBox(height: 25,),
           Button(label: 'Create an account', onPressed: () {
             Get.to(const SignUpScreen());
           },),
          const SizedBox(height: 15,),
          const Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Already have an account?',
    style: TextStyle(
    color: Colors.black45,
    fontWeight: FontWeight.w500,
    fontSize: 15,
    ),),
              SizedBox(width: 5,),
              Text('Sign In',style: TextStyle(
                color: Colors.redAccent,
                fontSize: 17,
                fontWeight: FontWeight.w500
              ),),
            ],
          )
        ],
      ),
    );
  }
}





