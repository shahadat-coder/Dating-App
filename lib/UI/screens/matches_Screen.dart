import 'package:dating_app/Component/match_card.dart';
import 'package:dating_app/Component/match_title.dart';
import 'package:dating_app/models/dammy_json/matches_json.dart';
import 'package:dating_app/utils/constants/padding_all.dart';
import 'package:dating_app/widgets/edit_button.dart';
import 'package:flutter/material.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({Key? key}) : super(key: key);

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20, horizontal: 15),
          child: SafeArea(
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Matches",
                      style: TextStyle(
                        fontWeight: FontWeight.w900,
                        fontSize: 25,
                        color: Colors.black,
                      ),
                    ),
                    EditButton(),
                  ],
                ),
                    SizedBox(height: 20,),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: defaultMediumPadding),
                      child: Text(
                        "This is a list of people who have liked you and your matches.",
                        style: TextStyle(fontSize: 16, height: 1.5),
                      ),
                    ),
                    MatchTitle(title: "Today",),
                    SizedBox(height: defaultMediumPadding,),
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
                    SizedBox(height: defaultPadding,),
                    MatchTitle(title: "Yesterday",),
                    SizedBox(height: defaultMediumPadding,),
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
                    SizedBox(height: defaultPadding,),
        
              ],
            ),
          ),
        ),
      ),
    );
  }
}
