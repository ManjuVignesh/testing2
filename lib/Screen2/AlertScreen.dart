import 'package:flutter/material.dart';
import 'package:testing2/config/colors.dart';

import 'ImageScreen.dart';

class AlertScreen extends StatefulWidget {
  const AlertScreen({Key? key}) : super(key: key);

  @override
  State<AlertScreen> createState() => _AlertScreenState();
}

class _AlertScreenState extends State<AlertScreen> {
  Future showFormDialog(BuildContext context, String message) async {
    return showDialog(
        context: context,
        builder: (BuildContext context) {
          TextEditingController fname = TextEditingController();
          TextEditingController lname = TextEditingController();
          TextEditingController pnumb = TextEditingController();
          TextEditingController email = TextEditingController();

          return AlertDialog(
            content: Form(
                key: contactForm,
                child: SingleChildScrollView(
                  child: Column(children: [
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          prefixIconColor: Colors.grey,
                          label: Text("First Name"),
                          labelStyle: TextStyle(color: Colors.grey),
                          hintText: 'Enter your First Name',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      controller: fname,
                      validator: (fname) {
                        if (fname!.isEmpty) {
                          return 'Please enter the First Name';
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.person),
                          label: Text('Last Name'),
                          hintText: 'Enter your Last Name',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      controller: lname,
                      validator: (lname) {
                        if (lname!.isEmpty) {
                          return 'Please enter the Last Name';
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                      keyboardType: TextInputType.number,
                      decoration: InputDecoration(
                          prefixIcon: Icon(Icons.phone),
                          label: Text('Mobile number'),
                          hintText: 'Enter your Mobile number',
                          border: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey)),
                          focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.grey))),
                      controller: pnumb,
                      maxLength: 10,
                      validator: (pnumb) {
                        if (pnumb!.length < 10) {
                          return 'Enter Valid Mobile number';
                        }
                      },
                    ),
                    SizedBox(height: 20),
                    TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        decoration: InputDecoration(
                            prefixIcon: Icon(Icons.real_estate_agent_rounded),
                            label: Text('email'),
                            hintText: 'Enter your email.com',
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
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                      ElevatedButton(
                          onPressed: () {
                            if (contactForm.currentState!.validate()) {
                              debugPrint(fname.text);
                              debugPrint(lname.text);
                              debugPrint(pnumb.text);
                              debugPrint(email.text);
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          const ImageScreen()));
                            }
                            ;
                          },
                          child: Text('Submit')),
                      SizedBox(
                        width: 20,
                      ),
                      ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text('Cancel'))
                    ]),
                  ]),
                )),
          );
        });
  }

  final contactForm = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Alert Dialog Box'),
        ),
        body: Center(
          child: ElevatedButton(
            onPressed: () {
              showFormDialog(context, "Fill the form");
            },
            child: Text('Form'),
          ),
        ));
  }
}
