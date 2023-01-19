import 'package:flutter/material.dart';

class Loginpage extends StatefulWidget {
  const Loginpage({Key? key}) : super(key: key);

  @override
  State<Loginpage> createState() => _LoginpageState();
}

class _LoginpageState extends State<Loginpage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Column(
            children: [
              Expanded(
                child: Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(color: Colors.cyan),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('Welcome,',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30)),
                      Text('Glad to see you!',
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 30))
                    ],
                  ),
                ),
              ),
              Expanded(
                  flex: 3,
                  child: Container(
                    decoration: BoxDecoration(color: Colors.purple),
                  ))
            ],
          ),
          Positioned(
            top: 100,
            left: 20,
            right: 20,
            child: Container(
              width: 149,
              color: Colors.white,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    SizedBox(height: 20,),
                    Form(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Email Address')),
                        SizedBox(
                          height: 10,
                        ),
                        TextFormField(
                            decoration: InputDecoration(
                                border: OutlineInputBorder(),
                                hintText: 'Password',
                                suffixIcon: Icon(
                                  Icons.remove_red_eye,
                                  color: Colors.black,
                                ))),
                        TextButton(
                            onPressed: () {},
                            child: Text(
                              'Forgot Password?',
                              style: TextStyle(color: Colors.red),
                            )),
                        Container(
                          width: double.maxFinite,
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                      builder: (context) => Loginpage(),
                                    ));
                              },
                              child: Text('Login',
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold)),
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Colors.white,
                                foregroundColor: Colors.black,
                              )),
                        )
                      ],
                    )),
                    Row(
                      children: [
                        Expanded(
                            child: Container(
                          height: 1,
                          color: Colors.black,
                        )),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text('Or Login With',
                              style: TextStyle(fontWeight: FontWeight.bold)),
                        ),
                        Expanded(
                            child: Container(
                          height: 1,
                          color: Colors.black,
                        )),
                      ],
                    ),
                    Container(
                      height: 40,
                      child: Row(
                        children: [
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/512/300/300221.png')),
                                ),
                              style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.white)),
                            ),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Expanded(
                            child: ElevatedButton(
                                onPressed: () {},
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                      image: NetworkImage(
                                          'https://cdn-icons-png.flaticon.com/512/733/733549.png')
                                  ),
                                ),
                              style: ButtonStyle(backgroundColor:MaterialStatePropertyAll(Colors.white)),
                            ),
                          )
                        ],
                      ),
                    ),
                    SizedBox(height: 30,),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Dont have an account?'),
                        TextButton(onPressed: () {
                          
                        }, child: TextButton(onPressed: () {
                          
                        }, child: Text('Signup Now'))),
                      ],
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
