import 'package:flutter/material.dart';


class FilterButton extends StatefulWidget {
  const FilterButton({
    Key? key,
  }) : super(key: key);

  @override
  State<FilterButton> createState() => _FilterButtonState();


}

class _FilterButtonState extends State<FilterButton> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Container(
        height: 52,
        width: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade400, width: 1),
        ),
        child:  Image.asset("assets/images/setting-config.png",color: Colors.redAccent,),
    )
    );
  }
}
