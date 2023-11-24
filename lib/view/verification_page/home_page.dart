import 'package:flutter/material.dart';
import 'package:intl_phone_field/intl_phone_field.dart';

class Verification_page extends StatefulWidget {
  const Verification_page({super.key});

  @override
  State<Verification_page> createState() => _Verification_pageState();
}

class _Verification_pageState extends State<Verification_page> {
  FocusNode focusNode = FocusNode();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title:Text('phone verification'),),
      body: Center(
        child: Column(
          children: [
            Text('Verify your phonhe here', style: TextStyle(fontWeight: FontWeight.bold,fontSize:30 ),),
            IntlPhoneField(
              focusNode: focusNode,
              decoration: InputDecoration(
                labelText: 'Phone Number',
                border: OutlineInputBorder(
                  borderSide: BorderSide(),
                ),
              ),
              languageCode: "en",
              onChanged: (phone) {
                print(phone.completeNumber);
              },
              onCountryChanged: (country) {
                print('Country changed to: ' + country.name);
              },
            ),
          ],
        ),
      ),
    );
  }
}
