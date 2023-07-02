
// ignore_for_file: prefer_const_constructors, duplicate_ignore

import 'package:flutter/material.dart';
import 'package:laundrysepatu/pages/Beranda_pages.dart';
import 'package:laundrysepatu/pages/Order_pages.dart';
import 'package:laundrysepatu/pages/akun_pages.dart';
import 'package:laundrysepatu/pages/pembayaran_pages.dart';
import 'package:laundrysepatu/pages/promo_pages.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _navbarSelect = 0;

  void _changeSelectedNavBar(int index) {
    setState(() {
      _navbarSelect = index;
    });
  }

  List page = [
    BerandaPages(),
    OrderPages(),
    PembayaranPages(),
    PromoPages(),
    AkunPages(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: page[_navbarSelect],
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: "Beranda",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_rounded),
            label: "Order",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.credit_card_rounded),
            label: "Pembayaran",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.percent_rounded),
            label: "Promo",
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_rounded),
            label: "Akun",
          )
        ],
        currentIndex: _navbarSelect,
        onTap: _changeSelectedNavBar,
        // ignore: prefer_const_constructors
        selectedItemColor: Color(0xff357498),
        unselectedItemColor: Colors.black,
        showUnselectedLabels: true,
      ),
    );
  }
}
