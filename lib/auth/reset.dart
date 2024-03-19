import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_example/auth/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Reset_Pass extends StatelessWidget {
  Reset_Pass({super.key});
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

  ResetPass(email, context) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: SafeArea(
          child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 50),
        child: ListView(
          children: [
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Restore Password",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.yellowAccent),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Enter the email and reset password!!",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white70),
              ),
            ),
            const SizedBox(
              height: 35,
            ),
            TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                hintText: "Enter Your Email",
                prefixIcon: const Icon(Icons.remove_red_eye),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.red), // Set border color here
                  borderRadius: BorderRadius.circular(
                      8), // Set rounded corner radius here
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors
                          .red), // Set border color when the field is focused
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(
                onPressed: () {
                  ResetPass(_emailcontroller.text, context);
                },
                child: Text("Reset")),
            const SizedBox(
              height: 25,
            ),
          ],
        ),
      )),
    );
  }
}
