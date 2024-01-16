import 'package:dating_app/Component/doscoverd_card.dart';
import 'package:dating_app/UI/screens/notification_screen.dart';
import 'package:dating_app/models/dammy_json/home_page_json.dart';
import 'package:dating_app/widgets/selected_row.dart';
import 'package:flutter/material.dart';
import 'package:flutter_swipecards/flutter_swipecards.dart';
import 'package:get/get.dart';
import '../../widgets/backButton.dart';
import '../../widgets/settingButton.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}
class _HomePageScreenState extends State<HomePageScreen> {
  CardController controller = CardController();

  List items = [];
  int itemLength = 0;

  @override
  void initState() {
    super.initState();
    setState(() {
      items = discoverItems;
      itemLength = discoverItems.length;
    });
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.only(top: 50, left: 15, right: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  BackButtonAll(
                    onClick: () {
                      Get.off(const NotificationScreen());
                    },
                  ),
                  const Column(
                    children: [
                      Text(
                        "Discover",
                        style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 25,
                          color: Colors.black,
                        ),
                      ),
                      Text(
                        "Chicago, ll",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.w400,
                          fontSize: 15,
                        ),
                      ),
                    ],
                  ),
                  const SettingsButton(),
                ],
              ),
              const SizedBox(height: 35,),
              Expanded(
                flex: 4,
                  child:TinderSwapCard(
                    cardController: controller,
                    maxHeight: size.height * 0.75,
                    maxWidth: size.width,
                    minHeight: size.height * 0.5,
                    minWidth: size.width * 0.8,
                    orientation: AmassOrientation.top,
                    swipeUp: true,
                    swipeDown: true,
                    stackNum: 2,
                    totalNum: itemLength,
                    cardBuilder: (context, index) {
                      return DiscoverCard(
                        itemList: items[index],
                      );
                    },
                    swipeCompleteCallback: (CardSwipeOrientation orientation, int index) {
                      if(index == (items.length - 1)) {
                        setState(() {
                          itemLength = items.length - 1;
                        });
                      }
                    },
                  )
              ),
              const SizedBox(height: 50,),
              const SelectRow()
            ],
          ),
        ),
    );
  }

}


