import 'package:flutter/material.dart';


class SettingsButton extends StatefulWidget {
  const SettingsButton({
    Key? key,
  }) : super(key: key);

  @override
  State<SettingsButton> createState() => _SettingsButtonState();


}

class _SettingsButtonState extends State<SettingsButton> {
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
