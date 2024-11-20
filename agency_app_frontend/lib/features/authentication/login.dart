import 'package:agency_app_frontend/features/pages/home.dart';
import 'package:agency_app_frontend/features/authentication/signin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.only(
            top: 20,
            right: 20,
            bottom: 20,
            left: 20,
          ),
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.only(
                      top: 45,
                      right: 230,
                    ),
                    child: Image(
                        height: 105, image: AssetImage('assets/logo/pp.png')),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(
                      left: 0,
                      top: 10,
                    ),
                    child: Text(
                      "Welcome Back,",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 23,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    "Discover unlimited choices.",
                    style: TextStyle(
                        color: Colors.red,
                        fontSize: 20,
                        fontWeight: FontWeight.w700),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Form(
                child: Column(
                  children: [
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: "E-mail",
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        suffixIcon: Icon(
                          FontAwesomeIcons.envelope,
                          size: 15,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 16,
                    ),
                    TextFormField(
                      expands: false,
                      decoration: InputDecoration(
                        labelText: "Password",
                        labelStyle: TextStyle(
                            color: Colors.black,
                            fontSize: 15,
                            fontWeight: FontWeight.bold),
                        suffixIcon: Icon(
                          FontAwesomeIcons.eyeSlash,
                          size: 15,
                          color: Colors.black,
                        ),
                        border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.red, width: 2),
                        ),
                        enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(5),
                          borderSide: BorderSide(color: Colors.red, width: 1),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (value) {}),
                        const Text(
                          "Remeber Me",
                          style: TextStyle(
                              color: Colors.red,
                              fontSize: 17,
                              fontWeight: FontWeight.w800),
                        ),
                        SizedBox(
                          width: 40,
                        ),
                        TextButton(
                            onPressed: () {},
                            child: const Text(
                              "Forget Password?",
                              style: TextStyle(
                                  color: Colors.red,
                                  fontSize: 17,
                                  fontWeight: FontWeight.w800),
                            )),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                        width: double.infinity,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(155, 230, 7, 7),
                              minimumSize: const Size(150, 50),
                              shape: const RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                  Radius.circular(50),
                                ),
                              ),
                            ),
                            onPressed: () {
                              Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => const Home()));
                            },
                            child: Text("Sign in",
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 18,
                                )))),
                    SizedBox(
                        width: double.infinity,
                        child: OutlinedButton(
                            style: OutlinedButton.styleFrom(
                              side: BorderSide(color: Colors.white, width: 2),
                            ),
                            onPressed: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const SigninScreen()),
                              );
                            },
                            child: Text("Create an Account",
                                style: TextStyle(color: Colors.red))))
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Flexible(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                    indent: 60,
                    endIndent: 5,
                  )),
                  Text(
                    "Or Sign in with",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 13,
                        fontWeight: FontWeight.w400),
                  ),
                  Flexible(
                      child: Divider(
                    color: Colors.grey,
                    thickness: 1.5,
                    indent: 5,
                    endIndent: 60,
                  ))
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image(
                            width: 20,
                            height: 20,
                            image: AssetImage('assets/images/google.png'))),
                  ),
                  SizedBox(
                    width: 15,
                  ),
                  Container(
                    decoration: BoxDecoration(
                        border: Border.all(color: Colors.white),
                        borderRadius: BorderRadius.circular(50)),
                    child: IconButton(
                        onPressed: () {},
                        icon: Image(
                            width: 20,
                            height: 20,
                            image: AssetImage('assets/images/facebook.png'))),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
