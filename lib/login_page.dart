import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}


class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Login Page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("Input username")),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(hint: Text("Input password")),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("Login", style: TextStyle(fontSize: 20,
              color: const Color.fromARGB(255, 3, 176, 87),
              fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: () {}, child: Text("Register", style: TextStyle(fontSize: 20,
              color: const Color.fromARGB(255, 32, 90, 250),
              fontWeight: FontWeight.bold) )),
            ],
          ),
        ],
      ),
    );
  }
}