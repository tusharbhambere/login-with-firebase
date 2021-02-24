import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:login_with_google/backend/google_sgin_in.dart';
import 'package:provider/provider.dart';

class LoggedInWidget extends StatelessWidget {
  final user = FirebaseAuth.instance.currentUser;
  @override
  Widget build(BuildContext context) => Container(
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: 8,
            ),
            CircleAvatar(
              maxRadius: 25,
              backgroundImage: NetworkImage(user.photoURL),
            ),
            SizedBox(
              height: 8,
            ),
            Text(
              'Name ' + user.displayName,
              style: TextStyle(fontSize: 20, color: Colors.red[700]),
            ),
            SizedBox(
              height: 8,
            ),
            Text('Email- ' + user.email),
            SizedBox(
              height: 8,
            ),
            ElevatedButton(
                onPressed: () {
                  final provider =
                      Provider.of<GoogleSignInProvider>(context, listen: false);
                  provider.logOut();
                },
                child: Text('Log Out'))
          ],
        ),
      );
}
