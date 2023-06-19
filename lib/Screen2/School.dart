import 'package:flutter/material.dart';

import '../Screen2/College.dart';

class School extends StatefulWidget {
  const School({Key? key}) : super(key: key);

  @override
  State<School> createState() => _SchoolState();
}

class _SchoolState extends State<School> {

  bool _obscureText = true;
  TextEditingController fname = TextEditingController();
  TextEditingController lname = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController pnumb = TextEditingController();
  TextEditingController area = TextEditingController();
  TextEditingController city = TextEditingController();
  TextEditingController state = TextEditingController();
  TextEditingController country = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController pincode = TextEditingController();
  final studentForm = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('School Details'),
      ),
      body: Form(
        key: studentForm,
        child: ListView(padding: EdgeInsets.all(15.0), children: [
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
          SizedBox(
            height: 10,
          ),
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
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.lock),
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  child: Icon(
                      _obscureText ? Icons.visibility : Icons.visibility_off),
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
            obscureText: _obscureText,
          ),
          SizedBox(
            height: 10,
          ),
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
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.area_chart),
                label: Text('Area'),
                hintText: 'Enter your Area Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: area,
            validator: (area) {
              if (area!.isEmpty) {
                return 'Please enter your Area';
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.location_city),
                label: Text('City'),
                hintText: 'Enter your City Name',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: city,
            validator: (city) {
              if (city!.isEmpty) {
                return 'Please enter your City';
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.real_estate_agent_rounded),
                label: Text('State'),
                hintText: 'Enter your State',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: state,
            validator: (state) {
              if (state!.isEmpty) {
                return 'Please enter your City';
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.text,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.real_estate_agent_rounded),
                label: Text('Country'),
                hintText: 'Enter your Country',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: country,
            validator: (country) {
              if (country!.isEmpty) {
                return 'Please enter your Country';
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
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
          SizedBox(
            height: 10,
          ),
          TextFormField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.real_estate_agent_rounded),
                label: Text('Pincode'),
                hintText: 'Enter your PinCode',
                border: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey)),
                focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.grey))),
            controller: pincode,
            maxLength: 6,
            validator: (pincode) {
              if (pincode!.length < 6) {
                return ' Enter valid Pincode';
              }
            },
          ),
          SizedBox(
            height: 10,
          ),
          ElevatedButton(
            onPressed: () {
              if (studentForm.currentState!.validate()) {
                debugPrint(fname.text);
                debugPrint(lname.text);
                debugPrint(password.text);
                debugPrint(pnumb.text);
                debugPrint(area.text);
                debugPrint(city.text);
                debugPrint(state.text);
                debugPrint(country.text);
                debugPrint(email.text);
                print('Pincode is: ${pincode.text}');

                if (fname.text == 'Admin' &&
                    password.text == 'Adminuser132@3') {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(content: Text('Login Successful')),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                        content: Text('Invalid Username and Password')),
                  );
                }
              }
            },
            child: Text('Submit'),
          ),
        ]),
      ),
    );
  }
}
