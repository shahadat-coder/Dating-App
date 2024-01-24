
import 'package:dating_app/Component/message_activity_card.dart';
import 'package:dating_app/Component/message_listtile.dart';
import 'package:dating_app/Component/message_title.dart';
import 'package:dating_app/models/dammy_json/message_json.dart';
import 'package:dating_app/utils/constants/padding_all.dart';
import 'package:dating_app/widgets/filterButton.dart';
import 'package:dating_app/Component/search_textfield.dart';
import 'package:flutter/material.dart';

class MassageScreen extends StatefulWidget {
  const MassageScreen({super.key});

  @override
  State<MassageScreen> createState() => _MassageScreenState();
}

class _MassageScreenState extends State<MassageScreen> {

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 20,),
          child: SafeArea(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "Message",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      FilterButton(),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: SearchTextField(),
                ),
                SizedBox(height: 10,),
                MessageTitle(title: 'Activities',),
                SizedBox(height: 5,),
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(activities.length, (index) {
                      return Padding(
                        padding: EdgeInsets.only(
                            left: index == 0 ? defaultPadding : defaultPadding,
                            right: index == (activities.length - 1) ? defaultPadding : 0
                        ),
                        child: MessageActivityCard(itemList: activities[index],),
                      );
                    }),
                  ),
                ),
                MessageTitle(title: "Messages",),
                Column(
                  children: List.generate(messages.length, (index) {
                    return MessageListTitle(
                      onTap: () {},
                      itemList: messages[index],
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
