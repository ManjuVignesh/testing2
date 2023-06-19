import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';

class GoogleAuth extends StatefulWidget {
  const GoogleAuth({Key? key}) : super(key: key);

  @override
  State<GoogleAuth> createState() => _GoogleAuthState();
}

class _GoogleAuthState extends State<GoogleAuth> {
  dynamic userName;
  dynamic userEmail;
  dynamic userProfile;

  Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth =
        await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    debugPrint('ID CHECK ${googleUser!.id}');
    // Once signed in, return the UserCredential

    setState(() {
      userName = googleUser.displayName;
      userEmail = googleUser.email;
      userProfile = googleUser.photoUrl;
    });
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Google Authenticaiton'),
          actions: [
            CircleAvatar(
              radius: 30,
              backgroundColor: Colors.white,
              backgroundImage:
                  userProfile != null ? NetworkImage(userProfile) : null,
            ),
          ],
        ),
        body: Column(
          children: [
            Container(
              height: 50,
              width: 250,
              child: TextButton(
                  onPressed: () async {
                    signInWithGoogle();
                  },
                  child: Text('Login')),
            ),
            Text('User:$userName'),
            Text('Email: $userEmail'),
            ElevatedButton(
                onPressed: () async {
                  await GoogleSignIn().signOut();
                  setState(() {
                    userName = '';
                  });
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => super.widget));
                },
                child: Text('Logout'))
          ],
        ));
  }
}
