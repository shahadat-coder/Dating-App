import 'package:dating_app/UI/screens/OTP_Screen.dart';
import 'package:dating_app/widgets/button_widget.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl_phone_field/intl_phone_field.dart';


class LoginWithPhoneScreen extends StatefulWidget {
  const LoginWithPhoneScreen({super.key});

  @override
  State<LoginWithPhoneScreen> createState() => _LoginWithPhoneScreenState();
}
class _LoginWithPhoneScreenState extends State<LoginWithPhoneScreen> {

  final GlobalKey<FormState> _globalKey = GlobalKey();
  FocusNode focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Padding(
        padding: EdgeInsets.only(top: 200,left: 10,),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("My Phone",style: TextStyle(
              fontWeight: FontWeight.w900,
              fontSize: 25,
              color: Colors.black,
            ),),
           const SizedBox(height: 5,),
            const Text("Please enter your valid phone number.\nWe will send you a 6 digit code to verify your account.",
              style: TextStyle(
                color: Colors.black45,
                fontWeight: FontWeight.w500,
                fontSize: 15,
              ),),
            const SizedBox(height: 25,),
               Form(
                 key: _globalKey,
                   child: Padding(
                     padding: const EdgeInsets.only(left: 10,right: 20),
                     child: IntlPhoneField(
                       initialCountryCode: 'US',
                       focusNode: focusNode,
                       decoration: InputDecoration(
                         labelText: 'Phone Number',
                         labelStyle: const TextStyle(color: Colors.black),
                         border: OutlineInputBorder(
                           borderRadius: BorderRadius.circular(15),
                           borderSide: BorderSide(color: Colors.black),
                         ),
                         focusedBorder:  OutlineInputBorder(
                           borderRadius: BorderRadius.circular(15),
                           borderSide: BorderSide(color: Colors.redAccent),
                         )
                       ),
                       //languageCode: "en",
                       onChanged: (phone) {
                         print(phone.completeNumber);
                       },
                       onCountryChanged: (country) {
                        // print('Country changed to: ' + country.name);
                       },
                     ),
                   )
               ),
            Button(label: 'Continue', onPressed: (){
              _globalKey.currentState?.validate();
               Get.to(const OtpScreen());
            }),

          ],
        ),
      ),
    );
  }
}
