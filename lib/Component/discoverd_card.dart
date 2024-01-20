import 'package:dating_app/utils/constants/colors.dart';
import 'package:dating_app/utils/constants/padding_all.dart';
import 'package:flutter/material.dart';


class DiscoverCard extends StatelessWidget {
  final itemList;

  const DiscoverCard({
    Key? key,
    required this.itemList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: defaultMediumPadding),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(defaultBorderRadius),
                color: white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 5,
                    spreadRadius: 2,
                    color: black.withOpacity(0.3),
                  )
                ],
                image: DecorationImage(
                  image: NetworkImage(itemList['imageUrl']),
                  fit: BoxFit.cover,
                )
            ),
          ),
          Positioned(
              top: 20,
              left: 16,
              child: Container(
                padding: const EdgeInsets.all(defaultMediumPadding),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(defaultBorderRadius / 2),
                  color: Colors.grey.shade400,
                ),
                child: Row(
                  children: [
                    Image.asset("assets/images/map.png",color: Colors.grey.shade800,),
                    const SizedBox(width: 5,),
                    Text(
                      itemList['distance'],
                      style: const TextStyle(
                          color: white,
                          fontSize: 12,
                          fontWeight: FontWeight.bold
                      ),
                    )
                  ],
                ),
              )
          ),
          Positioned(
              bottom: 0,
              left: 0,
              right: 0,
              child: Container(
                padding: const EdgeInsets.all(defaultPadding - 5),
                decoration: BoxDecoration(
                  borderRadius: const BorderRadius.vertical(
                      bottom: Radius.circular(defaultBorderRadius)
                  ),
                  color: black.withOpacity(0.5),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "${itemList['name']}, ${itemList['age']}",
                      style: const TextStyle(
                          color: white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),
                    ),
                    const SizedBox(height: defaultSmallPadding),
                    Text(
                      itemList['passion'],
                      style: const TextStyle(color: white),
                    )
                  ],
                ),
              )
          ),
        ],
      ),
    );
  }
}