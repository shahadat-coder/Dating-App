import 'package:flutter/material.dart';

class AllTextField extends StatefulWidget {
   AllTextField({
    Key? key,
    required this.globalKey,
    required this.nameController,
    required this.professionController,
  }) : super(key: key);

  final GlobalKey<FormState> globalKey;
  final TextEditingController nameController;
  final TextEditingController professionController;


  @override
  State<AllTextField> createState() => _AllTextFieldState();
}

class _AllTextFieldState extends State<AllTextField> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: widget.globalKey,
        child: Column(
          children: [
            TextFormField(
              controller: widget.nameController,
              decoration: InputDecoration(
                labelText: "Name",
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.redAccent),
                ),
              ),
            ),
            const SizedBox(height: 10),
            TextFormField(
              controller: widget.professionController,
              decoration: InputDecoration(
                labelText: "Profession",
                labelStyle: const TextStyle(
                  color: Colors.black,
                ),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: BorderSide(color: Colors.grey.shade400),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(15),
                  borderSide: const BorderSide(color: Colors.redAccent),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


