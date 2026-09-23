import 'package:flutter/material.dart';

class Kalkulator extends StatefulWidget {
  const Kalkulator({super.key});

  @override
  State<Kalkulator> createState() => _KalkulatorState();
}

class _KalkulatorState extends State<Kalkulator> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Kalkulator Page")),
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("Input Angka 1")),
            ),
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("Input Angka 2")),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton(onPressed: () {}, child: Text("+", style: TextStyle(fontSize: 20,
              color: const Color.fromARGB(255, 3, 176, 87),
              fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: () {}, child: Text("-", style: TextStyle(fontSize: 20,
              color: const Color.fromARGB(255, 32, 90, 250),
              fontWeight: FontWeight.bold) )),
              ElevatedButton(onPressed: () {}, child: Text("×", style: TextStyle(fontSize: 20,
              color: const Color.fromARGB(255, 170, 4, 4),
              fontWeight: FontWeight.bold))),
              ElevatedButton(onPressed: () {}, child: Text("÷", style: TextStyle(fontSize: 20,
              color: const Color.fromARGB(255, 216, 231, 11),
              fontWeight: FontWeight.bold) )),
            ],
          ),
          Container(
            margin: EdgeInsets.all(10),
            child: TextField(
              decoration: InputDecoration(hint: Text("Hasil")),
            ),
          ),
        ]

      )

    );
  }
}