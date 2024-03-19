import 'package:firebase_example/auth/reset.dart';
import 'package:firebase_example/auth/signin.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class Sign_Up extends StatelessWidget {
  Sign_Up({super.key});
  TextEditingController _emailcontroller = TextEditingController();
  TextEditingController _passwordcontroller = TextEditingController();

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
                "Welcome",
                style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.w800,
                    color: Colors.yellowAccent),
              ),
            ),
            const Align(
              alignment: Alignment.center,
              child: Text(
                "Sign Up your account & using this app!",
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w800,
                    color: Colors.white70),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            TextFormField(
              controller: _emailcontroller,
              decoration: InputDecoration(
                hintText: "Email Address",
                prefixIcon: const Icon(Icons.email_outlined),
                border: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors.red), // Set border color here
                  borderRadius: BorderRadius.circular(
                      8), // Set rounded corner radius here
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: const BorderSide(
                      color: Colors
                          .deepOrange), // Set border color when the field is focused
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            TextFormField(
              controller: _passwordcontroller,
              decoration: InputDecoration(
                hintText: "Password",
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
              height: 15,
            ),
            Align(
              alignment: Alignment.center,
              child: Text.rich(TextSpan(children: [
                TextSpan(text: "Forget your password?"),
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Reset_Pass())),
                    text: " Reset Now",
                    style: TextStyle(color: Colors.tealAccent))
              ])),
            ),
            const SizedBox(
              height: 25,
            ),
            ElevatedButton(onPressed: () {}, child: Text("Sign Up")),
            const SizedBox(
              height: 25,
            ),
            Align(
              alignment: Alignment.center,
              child: Text.rich(TextSpan(children: [
                const TextSpan(text: "Already have in account?"),
                TextSpan(
                    recognizer: TapGestureRecognizer()
                      ..onTap = () => Navigator.push(context,
                          MaterialPageRoute(builder: (_) => Sign_In())),
                    text: "Sign in",
                    style: const TextStyle(color: Colors.tealAccent))
              ])),
            ),
          ],
        ),
      )),
    );
  }
}
