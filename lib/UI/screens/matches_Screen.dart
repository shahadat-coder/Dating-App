import 'package:dating_app/widgets/ListView_widget.dart';
import 'package:dating_app/widgets/edit_button.dart';
import 'package:flutter/material.dart';

class MatchesScreen extends StatefulWidget {
  const MatchesScreen({super.key});

  @override
  State<MatchesScreen> createState() => _MatchesScreenState();
}

class _MatchesScreenState extends State<MatchesScreen> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return const Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 20,horizontal: 15),
        child: SafeArea(
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text("Matches",style: TextStyle(
                    fontWeight: FontWeight.w900,
                    fontSize: 25,
                    color: Colors.black,
                  ),),
                  EditButton(),
                ],
              ),
              Expanded(
                child: ListViewWidget(),
              ),
            ],
          ),
        ),
      )





    );
  }
}
