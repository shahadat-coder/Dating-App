import 'package:flutter/material.dart';

class InterestsCategory extends StatefulWidget {
  const InterestsCategory({
    super.key,
  });

  @override
  State<InterestsCategory> createState() => _InterestsCategoryState();
}

class _InterestsCategoryState extends State<InterestsCategory> {
  List<bool> isSelectedPhotography = [false, false];
  List<bool> isSelectedShopping = [false, false];
  List<bool> isSelectedKaraoke = [false, false];
  List<bool> isSelectedYoga = [false, false];
  List<bool> isSelectedCooking = [false, false];
  List<bool> isSelectedTennis = [false, false];
  List<bool> isSelectedRun = [false, false];
  List<bool> isSelectedSwimming = [false, false];
  List<bool> isSelectedArt = [false, false];
  List<bool> isSelectedTraveling = [false, false];
  List<bool> isSelectedExtreme = [false, false];
  List<bool> isSelectedMusic = [false, false];
  List<bool> isSelectedDrink = [false, false];
  List<bool> isSelectedVideogames = [false, false];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedPhotography[0] = !isSelectedPhotography[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedPhotography[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedPhotography[0]
                      ? Colors.redAccent
                      : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/camera.png',
                      color: isSelectedPhotography[0]
                          ? Colors.white
                          : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Photography',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: isSelectedPhotography[0]
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedShopping[0] = !isSelectedShopping[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedShopping[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      isSelectedShopping[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/weixin-market.png',
                      color: isSelectedShopping[0]
                          ? Colors.white
                          : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Shopping',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color:
                            isSelectedShopping[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedKaraoke[0] = !isSelectedKaraoke[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedKaraoke[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedKaraoke[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/voice.png',
                      color: isSelectedKaraoke[0]
                          ? Colors.white
                          : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Karaoke',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color:
                            isSelectedKaraoke[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedYoga[0] = !isSelectedYoga[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedYoga[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedYoga[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/viencharts.png',
                      color:
                          isSelectedYoga[0] ? Colors.white : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Yoga',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: isSelectedYoga[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedCooking[0] = !isSelectedCooking[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedCooking[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedCooking[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/noodles.png',
                      color: isSelectedCooking[0]
                          ? Colors.white
                          : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Cooking',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color:
                            isSelectedCooking[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedTennis[0] = !isSelectedTennis[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedTennis[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedTennis[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/tennis.png',
                      color:
                          isSelectedTennis[0] ? Colors.white : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Tennis',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color:
                            isSelectedTennis[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedRun[0] = !isSelectedRun[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedRun[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedRun[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/sport.png',
                      color: isSelectedRun[0] ? Colors.white : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Run',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: isSelectedRun[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedSwimming[0] = !isSelectedSwimming[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedSwimming[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      isSelectedSwimming[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/ripple.png',
                      color: isSelectedSwimming[0]
                          ? Colors.white
                          : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Swimming',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color:
                            isSelectedSwimming[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedArt[0] = !isSelectedArt[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedArt[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedArt[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/platte.png',
                      color: isSelectedArt[0] ? Colors.white : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Art',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: isSelectedArt[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedTraveling[0] = !isSelectedTraveling[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedTraveling[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      isSelectedTraveling[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/outdoor.png',
                      color: isSelectedTraveling[0]
                          ? Colors.white
                          : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Traveling',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: isSelectedTraveling[0]
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedExtreme[0] = !isSelectedExtreme[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedExtreme[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedExtreme[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/parachute.png',
                      color: isSelectedExtreme[0]
                          ? Colors.white
                          : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Extreme',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color:
                            isSelectedExtreme[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedMusic[0] = !isSelectedMusic[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedMusic[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedMusic[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/music (1).png',
                      color:
                          isSelectedMusic[0] ? Colors.white : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Music',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: isSelectedMusic[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 12,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedDrink[0] = !isSelectedDrink[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedDrink[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color: isSelectedDrink[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/goblet-full.png',
                      color:
                          isSelectedDrink[0] ? Colors.white : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Drink',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: isSelectedDrink[0] ? Colors.white : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isSelectedVideogames[0] = !isSelectedVideogames[0];
                });
              },
              child: Container(
                height: 45,
                width: 140,
                decoration: BoxDecoration(
                  border: Border.all(
                      color: isSelectedVideogames[0]
                          ? Colors.redAccent
                          : Colors.grey.shade400,
                      width: 1),
                  borderRadius: BorderRadius.circular(15),
                  color:
                      isSelectedVideogames[0] ? Colors.redAccent : Colors.white,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      'assets/images/Group.png',
                      color: isSelectedVideogames[0]
                          ? Colors.white
                          : Colors.redAccent,
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Video games',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: isSelectedVideogames[0]
                            ? Colors.white
                            : Colors.black,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
