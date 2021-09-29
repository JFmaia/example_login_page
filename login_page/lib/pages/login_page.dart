import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:login_page/components/logo.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final bool _isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const Logo(),
              Padding(
                padding: const EdgeInsets.all(30),
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        boxShadow: const [
                          BoxShadow(
                            color: Colors.blueGrey,
                            blurRadius: 20.0,
                            offset: Offset(0, 10),
                          ),
                        ],
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            decoration: const BoxDecoration(
                              border: Border(
                                bottom: BorderSide(color: Colors.black12),
                              ),
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Email or Phone number",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(8.0),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: "Password",
                                hintStyle: TextStyle(color: Colors.grey[400]),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 6,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 170),
                      child: TextButton(
                        child: const Text(
                          "Forgot Password?",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          gradient: const LinearGradient(
                            colors: [
                              Colors.black12,
                              Colors.blueGrey,
                            ],
                          ),
                        ),
                        child: const Center(
                          child: Text(
                            "Login",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Center(
                      child: TextButton(
                        child: const Text(
                          "Register here!",
                          style: TextStyle(
                            color: Colors.blueGrey,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        onPressed: () {},
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
