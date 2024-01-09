import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('DatePicker Example'),
        ),
        body: MyForm(),
      ),
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final GlobalKey<FormState> _globalKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _professionController = TextEditingController();
  DateTime selectedDate = DateTime.now();

  @override
  Widget build(BuildContext context) {
    return AllTextField(
      globalKey: _globalKey,
      nameController: _nameController,
      professionController: _professionController,
      selectedDate: selectedDate,
      onDateSelected: (DateTime newDate) {
        setState(() {
          selectedDate = newDate;
        });
      },
    );
  }
}

class AllTextField extends StatelessWidget {
  AllTextField({
    Key? key,
    required this.globalKey,
    required this.nameController,
    required this.professionController,
    required this.selectedDate,
    required this.onDateSelected,
  }) : super(key: key);

  final GlobalKey<FormState> globalKey;
  final TextEditingController nameController;
  final TextEditingController professionController;
  final DateTime selectedDate;
  final ValueChanged<DateTime> onDateSelected;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Form(
        key: globalKey,
        child: Column(
          children: [
            TextFormField(
              controller: nameController,
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
              controller: professionController,
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
            const SizedBox(height: 10),
            Container(
              height: 60,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                color: Colors.redAccent.withOpacity(0.3),
              ),
              child: Padding(
                padding: const EdgeInsets.only(left: 15),
                child: Row(
                  children: [
                    IconButton(
                      onPressed: ()async{
                        final DateTime? dateTime = await showDatePicker(
                          context: context,
                          initialDate: selectedDate,
                          firstDate: DateTime(1950),
                          lastDate: DateTime(2024),
                        );
                        if (dateTime != null) {
                          onDateSelected(dateTime);
                        }
                      },

                      icon: const Icon(
                        Icons.calendar_month,
                        color: Colors.red,
                      ),
                    ),
                    const SizedBox(width: 5,),
                    Text(
                      "${selectedDate.day}/${selectedDate.month}/${selectedDate.year} ",
                      style: const TextStyle(color: Colors.red),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}


