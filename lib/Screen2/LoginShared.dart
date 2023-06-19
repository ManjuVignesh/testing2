import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:testing2/Screen2/MyDashboard.dart';

import '../config/routers.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool _obscureText = true;
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();

  String localStorage = '';

  late bool newuser;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    readData(); // to check if already login
  }

  void readData() async {
    SharedPreferences logindata = await SharedPreferences.getInstance();
    //logindata = await SharedPreferences.getInstance();
    logindata.setBool('login', false);
    logindata.setString('email', email as String);
    newuser = (logindata.getBool('login') ?? true);
    debugPrint(newuser as String?);
    if (newuser == false) {
      Navigator.pushNamedAndRemoveUntil(
          context, Routers.myDashboard, (route) => false);
    }
  }

  @override
  void dispose() {
    email.dispose();
    password.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Email'),
            SizedBox(
              width: 300,
              child: TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  decoration: const InputDecoration(
                      prefixIcon: Icon(Icons.real_estate_agent_rounded),
                      label: Text('email'),
                      hintText: 'Enter your email id',
                      border: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey)),
                      focusedBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.grey))),
                  controller: email,
                  validator: (email) {
                    if (email!.isEmpty &&
                        !RegExp("^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+.[a-z]")
                            .hasMatch(email)) {
                      return 'Please enter valid Email';
                    }

                    return null;
                  }),
            ),
            SizedBox(height: 30),
            Text('Password'),
            SizedBox(
              width: 300,
              child: TextFormField(
                keyboardType: TextInputType.text,
                obscureText: _obscureText,
                decoration: InputDecoration(
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        debugPrint('before ${_obscureText.toString()}');
                        setState(() {
                          _obscureText = !_obscureText;
                        });
                        debugPrint('after ${_obscureText.toString()}');
                      },
                      child: Icon(_obscureText
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                    label: Text('Password'),
                    hintText: 'Enter your Password',
                    border: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey)),
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.grey))),
                controller: password,
                validator: (password) {
                  RegExp regex = RegExp(
                      r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[!@#\$&*~]).{8,}$');
                  if (password!.isEmpty) {
                    return 'Please enter password';
                  } else {
                    if (!regex.hasMatch(password)) {
                      return 'Enter valid password';
                    } else {
                      return null;
                    }
                  }
                },
              ),
            ),
            ElevatedButton(
                onPressed: () async {
                  if (email != '' && password != '') {
                    debugPrint('Successfull');

                    //Navigator.pushNamedAndRemoveUntil(context, Routers.ytMobilePage, (route) => false);
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => MyDashboard()));
                  }
                },
                child: Text('LOGIN'))
          ],
        ),
      ),
    );
  }

  Future saveData(String name) async {
    final SharedPreferences prefs = await SharedPreferences.getInstance();
  }
}
