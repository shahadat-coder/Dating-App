import 'package:flutter/material.dart';

class ThirdWidget extends StatefulWidget {
  const ThirdWidget({super.key});

  @override
  State<ThirdWidget> createState() => _ThirdWidgetState();
}

class _ThirdWidgetState extends State<ThirdWidget> {
  List<bool> isSelectedCooking = [false, false];
  List<bool> isSelectedTennis = [false, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildCategoryContainer(
          isSelected: isSelectedCooking[0],
          onTap: () {
            setState(() {
              isSelectedCooking[0] = !isSelectedCooking[0];
            });
          },
          imageAsset: 'assets/images/noodles.png',
          label: 'Cooking',
        ),
        buildCategoryContainer(
          isSelected: isSelectedTennis[0],
          onTap: () {
            setState(() {
              isSelectedTennis[0] = !isSelectedTennis[0];
            });
          },
          imageAsset: 'assets/images/tennis.png',
          label: 'Tennis',
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
