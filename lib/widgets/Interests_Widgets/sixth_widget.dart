import 'package:flutter/material.dart';

class SixthWidget extends StatefulWidget {
  const SixthWidget({super.key});

  @override
  State<SixthWidget> createState() => _SixthWidgetState();
}

class _SixthWidgetState extends State<SixthWidget> {
  List<bool> isSelectedExtreme = [false, false];
  List<bool> isSelectedMusic = [false, false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildCategoryContainer(
          isSelected: isSelectedExtreme[0],
          onTap: () {
            setState(() {
              isSelectedExtreme[0] = !isSelectedExtreme[0];
            });
          },
          imageAsset: 'assets/images/parachute.png',
          label: 'Extreme',
        ),
        buildCategoryContainer(
          isSelected: isSelectedMusic[0],
          onTap: () {
            setState(() {
              isSelectedMusic[0] = !isSelectedMusic[0];
            });
          },
          imageAsset: 'assets/images/music (1).png',
          label: 'Music',
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
