import 'package:flutter/material.dart';

class FifthWidget extends StatefulWidget {
  const FifthWidget({super.key});

  @override
  State<FifthWidget> createState() => _FifthWidgetState();
}

class _FifthWidgetState extends State<FifthWidget> {
  List<bool> isSelectedArt = [false, false];
  List<bool> isSelectedTraveling = [false, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildCategoryContainer(
          isSelected: isSelectedArt[0],
          onTap: () {
            setState(() {
              isSelectedArt[0] = !isSelectedArt[0];
            });
          },
          imageAsset: 'assets/images/platte.png',
          label: 'Art',
        ),
        buildCategoryContainer(
          isSelected: isSelectedTraveling[0],
          onTap: () {
            setState(() {
              isSelectedTraveling[0] = !isSelectedTraveling[0];
            });
          },
          imageAsset: 'assets/images/outdoor.png',
          label: 'Traveling',
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
