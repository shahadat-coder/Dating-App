import 'package:flutter/material.dart';

class InterestsCategory extends StatelessWidget {
  const InterestsCategory({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/camera.png',color: Colors.redAccent),
                  const SizedBox(width: 10,),
                  const Text('Photography',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/weixin-market.png',color: Colors.redAccent,),
                  const SizedBox(width: 10,),
                  const Text('Shopping',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/voice.png',color: Colors.redAccent),
                  const SizedBox(width: 10,),
                  const Text('Karaoke',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/viencharts.png',color: Colors.redAccent,),
                  const SizedBox(width: 10,),
                  const Text('Yoga',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/noodles.png',color: Colors.redAccent),
                  const SizedBox(width: 10,),
                  const Text('Cooking',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/tennis.png',color: Colors.redAccent,),
                  const SizedBox(width: 10,),
                  const Text('Tennis',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/sport.png',color: Colors.redAccent),
                  const SizedBox(width: 10,),
                  const Text('Run',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/ripple.png',color: Colors.redAccent,),
                  const SizedBox(width: 10,),
                  const Text('Swimming',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/platte.png',color: Colors.redAccent),
                  const SizedBox(width: 10,),
                  const Text('Art',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/outdoor.png',color: Colors.redAccent,),
                  const SizedBox(width: 10,),
                  const Text('Traveling',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/parachute.png',color: Colors.redAccent),
                  const SizedBox(width: 10,),
                  const Text('Extreme',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/music (1).png',color: Colors.redAccent,),
                  const SizedBox(width: 10,),
                  const Text('Music',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(height: 12,),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/goblet-full.png',color: Colors.redAccent),
                  const SizedBox(width: 10,),
                  const Text('Drink',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
            Container(
              height: 45,
              width: 140,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400, width: 1),
                borderRadius: BorderRadius.circular(15),
                color: Colors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset('assets/images/Group.png',color: Colors.redAccent,),
                  const SizedBox(width: 10,),
                  const Text('Video games',style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Colors.black,
                  ),),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}