import 'package:flutter/material.dart';
import 'package:get/get.dart';

class BackButtonAll extends StatefulWidget {
  const BackButtonAll({
    Key? key,
    required this.onClick,
  }) : super(key: key);

  @override
  State<BackButtonAll> createState() => _BackButtonAllState();

  final VoidCallback onClick;
}

class _BackButtonAllState extends State<BackButtonAll> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onClick,
      child: Container(
        height: 52,
        width: 52,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          border: Border.all(color: Colors.grey.shade400, width: 1),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 12),
          child: Icon(
            Icons.arrow_back_ios,
            color: Colors.redAccent,
          ),
        ),
      ),
    );
  }
}
