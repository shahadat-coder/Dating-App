import 'package:flutter/material.dart';

class SeventhWidget extends StatefulWidget {
  const SeventhWidget({super.key});

  @override
  State<SeventhWidget> createState() => _SeventhWidgetState();
}

class _SeventhWidgetState extends State<SeventhWidget> {
  List<bool> isSelectedDrink = [false, false];
  List<bool> isSelectedVideogames = [false, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildCategoryContainer(
          isSelected: isSelectedDrink[0],
          onTap: () {
            setState(() {
              isSelectedDrink[0] = !isSelectedDrink[0];
            });
          },
          imageAsset: 'assets/images/goblet-full.png',
          label: 'Drink',
        ),
        buildCategoryContainer(
          isSelected: isSelectedVideogames[0],
          onTap: () {
            setState(() {
              isSelectedVideogames[0] = !isSelectedVideogames[0];
            });
          },
          imageAsset: 'assets/images/Group.png',
          label: 'Video games',
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
