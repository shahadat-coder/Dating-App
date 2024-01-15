import 'package:dating_app/UI/screens/Gender_screen.dart';
import 'package:dating_app/widgets/all_textField.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:dating_app/widgets/skipButton.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({super.key});

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}
class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  DateTime selectedDate = DateTime.now();


  Future<void> _selectDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: selectedDate,
      firstDate: DateTime(2000),
      lastDate: DateTime(2101),
    );

    if (picked != null && picked != selectedDate) {
      setState(() {
        selectedDate = picked;
      });
    }

  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 50,left: 15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                 Padding(
                  padding: EdgeInsets.only(left: 320),
                  child: SkipButton(onPressed: () {  },),
                ),
              const Text("Profile details ",style: TextStyle(
                  fontWeight: FontWeight.w800,
                  fontSize: 25,
                  color: Colors.black,
                ),),
        
                const SizedBox(height: 40,),
                Center(
                  child: Stack(
                    children: [
                      Container(
                        width: 99,
                        height: 99,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(width: 3,color: Colors.white),
                            boxShadow: [
                              BoxShadow(
                                spreadRadius: 2,
                                blurRadius: 10,
                                color: Colors.black.withOpacity(0.1),
                              )
                            ],
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: NetworkImage('https://www.realmenrealstyle.com/wp-content/uploads/2023/03/The-Side-Part.jpg'),
        
                            )
                        ),
                      ),
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              border: Border.all(width: 2,
                                  color: Colors.white
                              ),
                              color: Colors.redAccent
                          ),
                          child: const Icon(Icons.camera_alt,color: Colors.white,size: 20,),
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(height: 20,),

                AllTextField(
                  globalKey: _globalKey,
                  nameController: _nameController,
                  professionController: _professionController,

                ),
                const SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
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
                            onPressed: () async {
                              _selectDate(context);
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
                ),

                const SizedBox(
                height: 200,
              ),
              Button(label: 'Conform', onPressed: () {
                Get.to(const GenderScreen());
              })
            ],
            ),
          ),
        ),
      )
    );
  }
}




