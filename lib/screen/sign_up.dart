import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';
import 'package:login_with_google/backend/google_signupbutton.dart';
import 'package:login_with_google/constant/bagroundPanter.dart';
import 'package:login_with_google/constant/constant.dart';
import 'package:login_with_google/screen/signUpPages.dart';

class SignUpWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Stack(
        fit: StackFit.expand,
        children: [
          CustomPaint(painter: BackgroundPainter()),
          buildSignUp(),
        ],
      );

  Widget buildSignUp() => Column(
        children: [
          Spacer(),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              margin: EdgeInsets.symmetric(horizontal: 25),
              width: 190,
              child: Text('Welcome This is My Test', style: loginStyle),
            ),
          ),
          Spacer(),
          GoogleSignupButton(),
          Text(
            'Login to continue',
            style: smallLogin,
          ),
          Container(
            padding: EdgeInsets.all(4),
            child: OutlineButton.icon(
                shape: StadiumBorder(),
                padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                highlightedBorderColor: Colors.black,
                borderSide: BorderSide(color: Colors.black),
                textColor: Colors.black,
                onPressed: () {
                  Get.to(SignUpPage1());
                },
                icon: FaIcon(FontAwesomeIcons.hackerNews),
                label: Text('SignUP')),
          ),
          Spacer()
        ],
      );
}
