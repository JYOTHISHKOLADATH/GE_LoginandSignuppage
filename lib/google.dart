import 'package:flutter/material.dart';
class Google extends StatefulWidget {
  const Google({Key? key}) : super(key: key);

  @override
  State<Google> createState() => _GoogleState();
}

class _GoogleState extends State<Google> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Center(child: Image(image: AssetImage('images/google.png'))),
    );
  }
}
