import 'package:flutter/material.dart';

import 'package:login_with_google/constant/constant.dart';

class SignUpPage1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        backgroundColor: bgColor,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 25,
                ),
                Center(
                  child: textTilte(),
                ),
                SizedBox(
                  height: 10,
                ),
                Center(
                  child: descriptionTille(),
                ),
                SizedBox(
                  height: 15,
                ),
                Center(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white54,
                        borderRadius: BorderRadius.circular(20)),
                    height: 400,
                    width: 330,
                    padding: EdgeInsets.symmetric(horizontal: 20),
                    child: Column(
                      children: [
                        loginForm(),
                        SizedBox(
                          height: 10,
                        ),
                        email(),
                        SizedBox(
                          height: 10,
                        ),
                        passwordForm(),
                        SizedBox(
                          height: 10,
                        ),
                        passwordForm2(),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 120,
                ),
                Center(
                    child: Container(
                  height: 45,
                  width: 330,
                  child: logInButton(),
                ))
              ],
            ),
          ),
        ),
      );
}

Widget textTilte() {
  return Text(
    "Sign Up",
    style: TextStyle(
        color: Colors.black, fontSize: 30, fontWeight: FontWeight.w700),
  );
}

Widget descriptionTille() {
  return Text(
    "Fill the form to log in",
    style: smallLogin,
  );
}

Widget loginForm() {
  return TextField(
    decoration: InputDecoration(
        hintText: 'User Name',
        alignLabelWithHint: true,
        labelStyle: TextStyle(fontSize: 12),
        hintStyle: TextStyle(fontSize: 12),
        labelText: 'User Detail'),
  );
}

Widget email() {
  return TextField(
    decoration: InputDecoration(
        hintText: 'Email ',
        alignLabelWithHint: true,
        labelStyle: TextStyle(fontSize: 12),
        hintStyle: TextStyle(fontSize: 12),
        labelText: 'Email Id'),
  );
}

Widget passwordForm() {
  return TextField(
    decoration: InputDecoration(
        hintText: 'Your Password',
        labelStyle: TextStyle(fontSize: 12),
        hintStyle: TextStyle(fontSize: 12),
        labelText: 'Password'),
  );
}

Widget passwordForm2() {
  return TextField(
    decoration: InputDecoration(
        hintText: 'Re-Enter_Password',
        labelStyle: TextStyle(fontSize: 12),
        hintStyle: TextStyle(fontSize: 12),
        labelText: 'Confirm Password'),
  );
}

Widget logInButton() {
  return ElevatedButton(
    child: Text('Log In'),
    onPressed: () {},
  );
}
