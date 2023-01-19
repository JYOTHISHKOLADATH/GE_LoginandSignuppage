import 'package:flutter/material.dart';
import 'package:ge_loginpage_with_gradient/facebook.dart';
import 'package:ge_loginpage_with_gradient/google.dart';
import 'package:ge_loginpage_with_gradient/loginpage.dart';
import 'package:ge_loginpage_with_gradient/loginpage_second.dart';
import 'package:google_fonts/google_fonts.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  State<Signup> createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isPasswordvisible=false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body:
      Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [Color(0xffBD59F3), Color(0xff8AD2F4)])),
        child:
        Padding(
          padding: const EdgeInsets.all(22.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                          text: 'Create Account,\n',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30),
                          children: [
                        TextSpan(
                            text: 'to get start now!',
                            style: TextStyle(
                              fontWeight: FontWeight.normal,
                            ))
                      ])),
                ],
              ),
              Spacer(),
              Form(
                  child: Column(
                children: [
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: TextFormField(
                        decoration: InputDecoration(
                            border: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10)),
                            hintText: 'Email Adress',
                            hintStyle: TextStyle(color: Colors.black45)),
                      )),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'Password',
                              hintStyle: TextStyle(color: Colors.black45)))),
                  SizedBox(
                    height: 20,
                  ),
                  Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey[200],
                      ),
                      child: TextFormField(
                          decoration: InputDecoration(
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10)),
                              hintText: 'Confirm Password',
                              hintStyle: TextStyle(color: Colors.black45)
                          ),
                        obscureText: isPasswordvisible,
                      )
                  ),
                ],
              )),
              SizedBox(height: 30),
              Container(
                width: double.maxFinite,
                height: 45,
                child: ElevatedButton(
                  onPressed: () {},
                  child: Text('Sign Up',
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                  // style: ElevatedButton.styleFrom(
                  //   backgroundColor: Colors.white,
                  //   foregroundColor: Colors.black,
                  // )
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      backgroundColor: Colors.white,
                      foregroundColor: Colors.black),
                ),
              ),
              Spacer(),
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                      height: 50,
                      endIndent: 10,
                      indent: 10,
                    ),
                  ),
                  Text('Or Sign Up With',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.white)),
                  Expanded(
                    child: Divider(
                      color: Colors.white,
                      thickness: 1,
                      height: 50,
                      endIndent: 10,
                      indent: 10,
                    ),
                  )
                ],
              ),
              Container(
                height: 40,
                child: Row(
                  children: [
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Google(),));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                           image: AssetImage('images/google.png'),
                          ),
                        ),
                        // style: ButtonStyle(
                        //     backgroundColor:
                        //         MaterialStatePropertyAll(Colors.white)),
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.white),
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Expanded(
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => Facebook(),));
                        },
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Image(
                              image: AssetImage('images/facebook.png'),
                          ),
                        ),
                        // style: ButtonStyle(
                        //     backgroundColor:
                        //         MaterialStatePropertyAll(Colors.white)),,
                        style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            backgroundColor: Colors.white),
                      ),
                    )
                  ],
                ),
              ),
              Spacer(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Secondlogin(),));
                    },
                    child: RichText(
                        textAlign: TextAlign.center,
                        text:
                            TextSpan(text: 'Already have an account?', children: [
                          TextSpan(
                              text: 'Login Now',
                              style: TextStyle(
                                  decoration: TextDecoration.underline,
                                  fontWeight: FontWeight.bold))
                        ]
                            )
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
