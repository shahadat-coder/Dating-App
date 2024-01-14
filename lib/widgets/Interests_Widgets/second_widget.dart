import 'package:flutter/material.dart';

class SecondWidget extends StatefulWidget {
  const SecondWidget({super.key});

  @override
  State<SecondWidget> createState() => _SecondWidgetState();
}

class _SecondWidgetState extends State<SecondWidget> {
  List<bool> isSelectedKaraoke = [false, false];
  List<bool> isSelectedYoga = [false, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildCategoryContainer(
          isSelected: isSelectedKaraoke[0],
          onTap: () {
            setState(() {
              isSelectedKaraoke[0] = !isSelectedKaraoke[0];
            });
          },
          imageAsset: 'assets/images/voice.png',
          label: 'Karaoke',
        ),
        buildCategoryContainer(
          isSelected: isSelectedYoga[0],
          onTap: () {
            setState(() {
              isSelectedYoga[0] = !isSelectedYoga[0];
            });
          },
          imageAsset: 'assets/images/viencharts.png',
          label: 'Yoga',
        ),
      ],
    );
  }

  Widget buildCategoryContainer({
    required bool isSelected,
    required VoidCallback onTap,
    required String imageAsset,
    required String label,
  }) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 45,
        width: 140,
        decoration: BoxDecoration(
          border: Border.all(
            color: isSelected ? Colors.redAccent : Colors.grey.shade400,
            width: 1,
          ),
          borderRadius: BorderRadius.circular(15),
          color: isSelected ? Colors.redAccent : Colors.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image.asset(
              imageAsset,
              color: isSelected ? Colors.white : Colors.redAccent,
            ),
            const SizedBox(
              width: 10,
            ),
            Text(
              label,
              style: TextStyle(
                fontWeight: FontWeight.w400,
                fontSize: 15,
                color: isSelected ? Colors.white : Colors.black,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
