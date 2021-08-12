import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  validator() {
    if (_formKey.currentState != null && _formKey.currentState!.validate()) {
      print("Validated");
    } else {
      print("Not Validated");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("SignUp Form"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(8.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter First Name",
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().length == 0) {
                        return "Field is required";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Last Name",
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().length == 0) {
                        return "Field is required";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Email",
                    ),
                    validator: (String? value) {
                      if (value == null || value.trim().length == 0) {
                        return "Field is required";
                      }
                      if (!RegExp(
                              r"^([a-zA-Z0-9!#$%&'*+\/=?^_`{|}~-]+(?:\.[a-zA-Z0-9!#$%&'*+\/=?^_`{|}~-]+)*@(?:[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?\.)+[a-zA-Z0-9](?:[a-zA-Z0-9-]*[a-zA-Z0-9])?)$")
                          .hasMatch(value)) {
                        return "Please Enter Valid Email Address";
                      }
                      return null;
                    },
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(8.0),
                  child: TextFormField(
                    decoration: InputDecoration(
                      labelText: "Enter Passsword",
                    ),
                    obscureText: true,
                    validator: (String? value) {
                      if (value == null || value.trim().length == 0) {
                        return "Field is required";
                      }
                      if (value.length <= 6) {
                        return "Password should not be less than 6 characters";
                      }
                      return null;
                    },
                  ),
                ),
                SizedBox(height: 10),
                ElevatedButton(
                    onPressed: () {
                      validator();
                    },
                    child: Text("Sign Up")),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
