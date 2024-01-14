import 'package:flutter/material.dart';

class ForthWidget extends StatefulWidget {
  const ForthWidget({super.key});

  @override
  State<ForthWidget> createState() => _ForthWidgetState();
}

class _ForthWidgetState extends State<ForthWidget> {
  List<bool> isSelectedRun = [false, false];
  List<bool> isSelectedSwimming = [false, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildCategoryContainer(
          isSelected: isSelectedRun[0],
          onTap: () {
            setState(() {
              isSelectedRun[0] = !isSelectedRun[0];
            });
          },
          imageAsset: 'assets/images/sport.png',
          label: 'Run',
        ),
        buildCategoryContainer(
          isSelected: isSelectedSwimming[0],
          onTap: () {
            setState(() {
              isSelectedSwimming[0] = !isSelectedSwimming[0];
            });
          },
          imageAsset: 'assets/images/ripple.png',
          label: 'Swimming',
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
