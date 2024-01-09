import 'package:dating_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class ProfileDetailsScreen extends StatefulWidget {
  const ProfileDetailsScreen({super.key});

  @override
  State<ProfileDetailsScreen> createState() => _ProfileDetailsScreenState();
}
class _ProfileDetailsScreenState extends State<ProfileDetailsScreen> {
  final GlobalKey<FormState> _globalKey = GlobalKey();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _professionController = TextEditingController();
  final TextEditingController _dayEDController = TextEditingController();



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
                  padding: const EdgeInsets.only(left: 320),
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.redAccent,
                        fontWeight: FontWeight.w400,
                        fontSize: 20
                      ),
                    )),
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
        
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Form(
                    key: _globalKey,
                      child: Column(
                        children: [
                          TextFormField(
                            controller: _nameController,
                            decoration: InputDecoration(
                              labelText: "Name",
                                labelStyle: const TextStyle(
                                  color: Colors.black
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: Colors.grey.shade400),
                                ),
                                focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Colors.redAccent),
                                )
                            ),
                            ),
                          const SizedBox(height: 10),
                           TextFormField(
                            controller: _professionController,
                            decoration: InputDecoration(
                                labelText: "Profession",
                                labelStyle: const TextStyle(
                                    color: Colors.black
                                ),
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: BorderSide(color: Colors.grey.shade400),
                                ),
                                focusedBorder:  OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15),
                                  borderSide: const BorderSide(color: Colors.redAccent),
                                )
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 60,
                            width: double.infinity,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15),
                              color: Colors.redAccent.withOpacity(0.3)
                            ),
                            child: Padding(
                              padding: const EdgeInsets.only(left: 15),
                              child: Row(
                                children: [
                                  IconButton(onPressed: (){
                            }, icon: const Icon(Icons.calendar_month,color: Colors.red,)),
                                  const SizedBox(width: 5,),
                                  const Text('Choose birthday date',style: TextStyle(color: Colors.red),),
                                ],
                              ),
                            ),
                          )
        
                        ],
                      ),
                      ),
                ),
                const SizedBox(height: 200,),
                
                Button(label: 'Conform', onPressed: (){})
        
              ],
            ),
          ),
        ),
      )
    );
  }
}
