import 'package:dating_app/Component/match_card.dart';
import 'package:dating_app/Component/match_title.dart';
import 'package:dating_app/models/dammy_json/matches_json.dart';
import 'package:dating_app/utils/constants/padding_all.dart';
import 'package:flutter/material.dart';

class ListViewWidget extends StatefulWidget {
  const ListViewWidget({super.key,});

  @override
  State<ListViewWidget> createState() => _ListViewWidgetState();
}


class _ListViewWidgetState extends State<ListViewWidget> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SafeArea(
      child: SingleChildScrollView(
        child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
          children: [
            const Padding(
              padding: EdgeInsets.symmetric(vertical: defaultMediumPadding),
              child: Text(
                "This is a list of people who have liked you and your matches.",
                style: TextStyle(fontSize: 16, height: 1.5),
              ),
            ),
            const MatchTitle(title: "Today",),
            const SizedBox(height: defaultMediumPadding,),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              children: List.generate(todayMatchItems.length, (index) {
                return MatchCard(
                  width: (size.width - 55) / 2,
                  itemList: todayMatchItems[index],
                );
              }),
            ),
            const SizedBox(height: defaultPadding,),
            const MatchTitle(title: "Yesterday",),
            const SizedBox(height: defaultMediumPadding,),
            Wrap(
              spacing: 15,
              runSpacing: 15,
              children: List.generate(yesterdayMatchItems.length, (index) {
                return MatchCard(
                  width: (size.width - 55) / 2,
                  itemList: yesterdayMatchItems[index],
                );
              }),
            ),
            const SizedBox(height: defaultPadding,),
          ],
        ),
      ),
    );
  }
}
