import 'package:flutter/material.dart';


class EditButton extends StatefulWidget {
  const EditButton({
    Key? key,
  }) : super(key: key);

  @override
  State<EditButton> createState() => _EditButtonState();


}

class _EditButtonState extends State<EditButton> {
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
          child:  Image.asset("assets/images/sort-two.png",color: Colors.redAccent,),
        )
    );
  }
}
