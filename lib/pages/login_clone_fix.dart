import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginClone extends StatefulWidget {
  const LoginClone({super.key});

  @override
  State<LoginClone> createState() => _LoginCloneState();
}

class _LoginCloneState extends State<LoginClone> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Instagram",
            style: GoogleFonts.grandHotel(
              fontSize: 60,
              color: const Color(0xFF262626),
            ),
          ),

          //const SizedBox(height: 40),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Phone number, username, or email",
                filled: true,
                fillColor: const Color(0xFFFAFAFA),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          Container(
            margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 5),
            child: TextField(
              obscureText: true,
              decoration: InputDecoration(
                hintText: "Password",
                filled: true,
                fillColor: const Color(0xFFFAFAFA),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
          ),

          TextButton(
            onPressed: () {},
            child: const Text(
              "Forgot password?",
              style: TextStyle(
                color: Color(0xFF3797EF),
                fontWeight: FontWeight.w600,
              ),
            ),
          ),

          Container(
            width: double.infinity,
            height: 45,
            margin: const EdgeInsets.symmetric(horizontal: 30),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF3797EF),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {},
              child: const Text(
                "Log In",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}