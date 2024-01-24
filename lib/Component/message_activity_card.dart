import 'package:dating_app/utils/constants/colors.dart';
import 'package:dating_app/utils/constants/padding_all.dart';
import 'package:flutter/material.dart';

class MessageActivityCard extends StatelessWidget {
  final itemList;

  const MessageActivityCard({
    Key? key,
    this.itemList,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70,
      child: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(defaultPadding / 10),
            decoration: const BoxDecoration(
              shape: BoxShape.circle,
              gradient: LinearGradient(colors: bgStoryColors),
            ),
            child: Container(
              height: 70,
              decoration: BoxDecoration(
                  color: white,
                  shape: BoxShape.circle,
                  border: Border.all(width: 2, color: white),
                  image: DecorationImage(
                      image: NetworkImage(itemList["imageUrl"]),
                      fit: BoxFit.cover
                  )
              ),
            ),
          ),
          const SizedBox(height: defaultSmallPadding,),
          Text(
            itemList["username"],
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle(fontWeight: FontWeight.bold),
          )
        ],
      ),
    );
  }
}