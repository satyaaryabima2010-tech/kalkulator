import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'component/my_textfield.dart';
import 'component/button.dart';
import 'component/textview.dart';

class LoginClone extends StatelessWidget {
  const LoginClone({super.key});

  @override
  Widget build(BuildContext context) {
    final emailController = TextEditingController();
    final passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 35),
            child: Column(
              children: [
                const SizedBox(height: 80),

                // Logo Instagram
                Textview(
                  text: 'Instagram',
                  style: GoogleFonts.grandHotel(
                    fontSize: 52,
                    color: const Color(0xFF262626),
                  ),
                ),

                const SizedBox(height: 50),

                MyTextField(
                  hint: 'Phone number, username, or email',
                  controller: emailController,
                ),

                const SizedBox(height: 12),

                MyTextField(
                  hint: 'Password',
                  controller: passwordController,
                  obscureText: true,
                ),

                const SizedBox(height: 10),

                Center(
                  child: TextButton(
                    onPressed: () {},
                    child: const Text(
                      'Forgot password?',
                      style: TextStyle(
                        color: Color(0xFF3797EF),
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 10),

                Button(
                  label: 'Log In',
                  onPressed: () {},
                ),

                const SizedBox(height: 25),

                Row(
                  children: const [
                    Expanded(child: Divider()),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      child: Textview(text: "OR"),
                    ),
                    Expanded(child: Divider()),
                  ],
                ),

                const SizedBox(height: 25),

                TextButton(
                  onPressed: () {},
                  child: const Text(
                    'Log in with Facebook',
                    style: TextStyle(
                      color: Color(0xFF1877F2),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),

                const SizedBox(height: 80),

                const Divider(),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Don't have an account? "),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        "Sign up",
                        style: TextStyle(
                          color: Color(0xFF3797EF),
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
