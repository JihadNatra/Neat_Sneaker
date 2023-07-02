// ignore_for_file: prefer_const_constructors, file_names

import 'package:laundrysepatu/pages/login_pages.dart';
import 'package:flutter/material.dart';
import '../widget/categorycard.dart';

// ignore: must_be_immutable
class BerandaPages extends StatelessWidget {
  BerandaPages({super.key});

  List item = [
    "FAST CLEAN",
    "DEEP CLEAN",
    "WHITENING",
    "REPAINT LEATHER",
    "REPAINT BOST",
    "REPAINT SUIDE",
  ];

  
  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    double statusBarHeight = MediaQuery.of(context).padding.top;

    return Scaffold(
      backgroundColor: Colors.grey[300],
      appBar: AppBar(
        backgroundColor: Color(0xff357498),
        title: const Text("Discover"),
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.shopping_cart))
        ],
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            // Bagian Search Bar ================================================
            // Container(
            //   height: 50,
            //   width: screenWidth,
            //   padding: const EdgeInsets.only(left: 20, right: 20, bottom: 10),
            //   color: Color(0xff357498),
            //   child: Container(
            //     height: 20,
            //     width: screenWidth,
            //     padding: const EdgeInsets.symmetric(vertical: 7),
            //     decoration: BoxDecoration(
            //       color: Colors.white,
            //       borderRadius: BorderRadius.circular(8),
            //     ),
            //     child: const TextField(
            //       decoration: InputDecoration(
            //         hintText: "What are you looking for ?",
            //         prefixIcon: Icon(Icons.search),
            //         border: InputBorder.none,
            //         contentPadding: EdgeInsets.symmetric(vertical: 9),
            //       ),
            //     ),
            //   ),
            // ),
            // Bagian Konten ===================================================
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  // category section =========================================
                  const Text(
                    "Category",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  const SizedBox(height: 10),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        CategoryCard(
                            icon: 'assets/Promo1.png',
                            titleCategory: ""),
                        CategoryCard(
                            icon: 'assets/Promo2.png',
                            titleCategory: ""),
                        CategoryCard(
                            icon: 'assets/Promo3.png',
                            titleCategory: ""),
                      ],
                    ),
                  ),
                  // item section ============================================
                  const Padding(
                    padding: EdgeInsets.symmetric(vertical: 10),
                    child: Text(
                      '',
                      style: TextStyle(
                        decoration: TextDecoration.underline,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(20),
                    child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 3 / 4,
                        mainAxisSpacing: 15,
                        crossAxisSpacing: 15,
                      ),
                      itemCount: 6,
                      itemBuilder: (context, index) {
                        return ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Stack(
                            children: [
                              SizedBox(
                                height: 200,
                                width: 400,
                                child: Image.asset(
                                  "assets/favorite_img_${index + 1}.jpg",
                                  fit: BoxFit.cover,
                                ),
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                      vertical: 10,
                                    ),
                                    width: double.infinity,
                                    height: 50,
                                    color: Colors.black.withOpacity(0.6),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Expanded(
                                          child: Text(
                                            item[index],
                                            style: const TextStyle(
                                              color: Colors.white,
                                            ),
                                          ),
                                        ),
                                        
                                      ],
                                    ),
                                  ),
                                ],
                              )
                            ],
                          ),
                        );
                      },
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      drawer: Drawer(
        backgroundColor: Colors.grey[300],
        child: Column(
          children: [
            SizedBox(height: statusBarHeight),
            ListTile(
              leading: CircleAvatar(
                backgroundColor: Colors.transparent,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(200),
                  child: Image.asset(
                    'assets/Jihad.jpeg',
                    height: 70,
                    width: 70,
                  ),
                ),
              ),
              title: Text('Jihad Natra S'),
              subtitle: Text('1207070061'),
              trailing: Text(
                'Owner',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.green,
                ),
              ),
            ),
            const Spacer(),
            ListTile(
              onTap: () {
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) {
                  return const LoginPage();
                }));
              },
              title: const Text("Log out"),
              leading: const Icon(Icons.logout),
            )
          ],
        ),
      ),
    );
  }
}
