
import 'package:dating_app/utils/constants/colors.dart';
import 'package:dating_app/utils/constants/padding_all.dart';
import 'package:flutter/material.dart';

class SearchTextField extends StatelessWidget {
  const SearchTextField({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      cursorColor: black.withOpacity(0.4),
      decoration: InputDecoration(
          contentPadding: EdgeInsets.symmetric(vertical: 0, horizontal: defaultMediumPadding),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            borderSide: BorderSide(width: 1, color: bgBorder),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(defaultBorderRadius),
            borderSide: BorderSide(width: 1, color: bgBorder),
          ),
          prefixIcon: Padding(
            padding: const EdgeInsets.symmetric(horizontal: defaultMediumPadding),
            child: Image.asset("assets/images/search.png"),
          ),
          prefixIconConstraints: BoxConstraints(minHeight: 20, minWidth: 20),
          hintText: "Search",
          hintStyle: TextStyle(color: black.withOpacity(0.4))
      ),
    );
  }
}