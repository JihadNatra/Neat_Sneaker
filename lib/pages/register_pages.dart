// ignore_for_file: prefer_const_constructors, use_key_in_widget_constructors, unused_import, non_constant_identifier_names, avoid_unnecessary_containers

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:laundrysepatu/pages/login_pages.dart';

class RegisterPage extends StatelessWidget {
  final TextEditingController _NOController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context)
        .size
        .width; // Mendapatkan ukuran layar device otomatis (responsive)

    return Scaffold(
      body: SafeArea(
        child: Container(
          color: Color(0xff357498), // Warna latar belakang biru
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 60),
                child: Image.asset(
                  "assets/Logo.png",
                  scale: 2,
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 50),
                width: screenWidth,
                height: 455,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.6),
                      spreadRadius: 5,
                      blurRadius: 7,
                      offset: const Offset(0, 3), // mengatur posisi bayangan
                    ),
                  ],
                ),
                child: Column(
                  children: [
                    const Padding(
                      padding: EdgeInsets.fromLTRB(0, 38, 0, 20),
                      child: Text(
                        "REGISTER",
                        style: TextStyle(
                          color: Color(0xff357498),
                          fontSize: 36,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: TextField(
                        controller: _NOController,
                        decoration: const InputDecoration(
                          label: Text("No. Telp"),
                          prefixIcon: Icon(Icons.person),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: TextField(
                        controller: _emailController,
                        decoration: const InputDecoration(
                          label: Text("Email"),
                          prefixIcon: Icon(Icons.mail),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 25, vertical: 10),
                      child: TextField(
                        controller: _passwordController,
                        decoration: const InputDecoration(
                          label: Text("Password"),
                          prefixIcon: Icon(Icons.lock),
                          suffixIcon: Icon(Icons.remove_red_eye_rounded),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 35),
                      width: screenWidth,
                      child: ElevatedButton(
                        onPressed: () {
                          Navigator.pushReplacement(context,
                              MaterialPageRoute(builder: (context) {
                            return LoginPage();
                          }));
                        },
                        //Tombol Register
                        style: ElevatedButton.styleFrom(
                            elevation: 8,
                            backgroundColor: Color(0xff357498),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10))),
                        child: Container(
                          child: const Padding(
                            padding: EdgeInsets.symmetric(vertical: 10),
                            child: Text(
                              "REGISTER",
                              style: TextStyle(fontSize: 18),
                            ),
                          ),
                        ),
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
