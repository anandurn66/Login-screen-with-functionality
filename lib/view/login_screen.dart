import 'package:class17/view/home_screen.dart';
import 'package:class17/view/register_screen.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool _isDataMatched = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Login',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          field(),
          field1(),
          SizedBox(
            height: 15,
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Visibility(
                  visible: !_isDataMatched,
                  child: Text(
                    'Username password does not match',
                    style: TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const HomeScreen(),
                        ));
                  },
                  child: Text('Login'),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(child: Text('Do not have an account,Register here'))
        ],
      ),
    );
  }

  Container field1() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0.0,
        ),
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: 'Password',
          hintStyle: TextStyle(
            color: Colors.grey[300],
            fontSize: 14,
          ),
        ),
      ),
    );
  }

  Container field() {
    return Container(
      margin: EdgeInsets.only(
        top: 40,
        left: 20,
        right: 20,
      ),
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.11),
          blurRadius: 40,
          spreadRadius: 0.0,
        ),
      ]),
      child: TextField(
        decoration: InputDecoration(
          filled: true,
          fillColor: Colors.white,
          contentPadding: EdgeInsets.all(15),
          hintText: 'Username',
          hintStyle: TextStyle(
            color: Colors.grey[300],
            fontSize: 14,
          ),
        ),
      ),
    );
  }
}
