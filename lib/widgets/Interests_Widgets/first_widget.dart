import 'package:flutter/material.dart';

class FirstWidget extends StatefulWidget {
  @override
  _FirstWidgetState createState() => _FirstWidgetState();
}

class _FirstWidgetState extends State<FirstWidget> {
  List<bool> isSelectedPhotography = [false];
  List<bool> isSelectedShopping = [false];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        buildCategoryContainer(
          isSelected: isSelectedPhotography[0],
          onTap: () {
            setState(() {
              isSelectedPhotography[0] = !isSelectedPhotography[0];
            });
          },
          imageAsset: 'assets/images/camera.png',
          label: 'Photography',
        ),
        buildCategoryContainer(
          isSelected: isSelectedShopping[0],
          onTap: () {
            setState(() {
              isSelectedShopping[0] = !isSelectedShopping[0];
            });
          },
          imageAsset: 'assets/images/weixin-market.png',
          label: 'Shopping',
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
