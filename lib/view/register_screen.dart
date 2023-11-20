import 'package:class17/view/home_screen.dart';
import 'package:flutter/material.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Register',
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
          Center(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomeScreen(),
                    ));
              },
              child: Text('Register'),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Center(child: Text('Already have an account register here'))
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
