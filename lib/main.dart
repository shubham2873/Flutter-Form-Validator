import 'package:flutter/material.dart';
import 'package:form_validator/screens/signup.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Form Validation",
      debugShowCheckedModeBanner: false,
      home: SignUp(),
    );
  }
}
