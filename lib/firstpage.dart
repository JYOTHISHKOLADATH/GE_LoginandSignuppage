import 'package:flutter/material.dart';
import 'package:ge_loginpage_with_gradient/Signup%20page.dart';
import 'package:ge_loginpage_with_gradient/loginpage.dart';
import 'package:ge_loginpage_with_gradient/loginpage_second.dart';

class Firstpage extends StatefulWidget {
  const Firstpage({Key? key}) : super(key: key);

  @override
  State<Firstpage> createState() => _FirstpageState();
}

class _FirstpageState extends State<Firstpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topCenter,
                end: Alignment.bottomLeft,
                colors: [Color(0xffBD59F3), Color(0xff8AD2F4)])),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(18.0),
            child: Column(
              children: [
                Spacer(),
                Expanded(
                    child: Image(
                        image: AssetImage('images/firstlogo.png'),
                    )
                ),
                SizedBox(height: 30,),
                Text('PixelPro Digital',
                    style:
                        TextStyle(fontWeight: FontWeight.bold, fontSize: 30,color: Colors.white)),
                SizedBox(
                  height: 60,
                ),
                Container(
                    width: double.maxFinite,
                    height: 50,
                    child: ElevatedButton(
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => Secondlogin(),
                              ));
                        },
                        child: Text('Login',
                            style: TextStyle(
                                fontSize: 20, fontWeight: FontWeight.bold)),
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            foregroundColor: Colors.black,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))))),
                SizedBox(
                  height: 30,
                ),
                Container(
                  width: double.maxFinite,
                  height: 50,
                  child: OutlinedButton(
                      onPressed: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => Signup(),
                            ));
                      },
                      child: Text('Sign up',
                          style: TextStyle(
                              fontSize: 20, fontWeight: FontWeight.bold)),
                      style: OutlinedButton.styleFrom(
                          foregroundColor: Colors.white,
                          side: BorderSide(color: Colors.white),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)))),
                ),
                Spacer(),
                TextButton(
                    onPressed: () {},
                    child: Text(
                      'Continue as a guest',
                      style: TextStyle(fontSize: 15,fontWeight: FontWeight.normal,
                          decoration: TextDecoration.underline,
                          color: Colors.white),
                    ))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
