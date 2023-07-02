import 'package:google_fonts/google_fonts.dart';
import 'package:flutter/material.dart';

class PromoPages extends StatelessWidget {
  const PromoPages({super.key});

  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget PromoCard(
      String img,
      String name,
    ) {
      return Container(
        padding: const EdgeInsets.all(10),
        margin: const EdgeInsets.only(bottom: 16),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(17),
            color: const Color(0xff357498)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 220,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(17),
                  image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage(img
                          // "assets/img_profile.png",

                          ))),
            ),
            const SizedBox(
              height: 10,
            ),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        name,
                        style: GoogleFonts.vollkornSc(
                          fontSize: 18,
                          color: const Color.fromARGB(255, 255, 255, 255),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      // Text(
                      //   genre,
                      //   style: GoogleFonts.vollkornSc(
                      //     fontSize: 14,
                      //     color: const Color.fromARGB(255, 255, 255, 255),
                      //     fontWeight: FontWeight.w300,
                      //   ),
                      // ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 24,
                        height: 24,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage(
                                  "assets/ic-star.png",
                                ))),
                      ),
                      Text(
                        '4.8',
                        style: GoogleFonts.vollkornSc(
                          fontSize: 16,
                          color: const Color(0xff357498),
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    return Scaffold(
      backgroundColor: const Color(0xff357498),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Text(
                        //   'Hello, \nJihad Natra',
                        //   style: GoogleFonts.vollkornSc(
                        //     fontSize: 24,
                        //     color: const Color(0xff9698A9),
                        //     fontWeight: FontWeight.w500,
                        //   ),
                        // ),
                        const SizedBox(
                          height: 6,
                        ),
                        Text(
                          'EID : 1207070061',
                          style: GoogleFonts.vollkornSc(
                            fontSize: 14,
                            color: const Color(0xff9698A9),
                            fontWeight: FontWeight.w300,
                          ),
                        ),
                      ],
                    ),
                    Container(
                      width: 76,
                      height: 76,
                      decoration: const BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                "assets/img_profile.png",
                              ))),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                PromoCard("assets/Promo2.png", "Pesan Sekarang, Cuci 2 Gratis 1"),
                PromoCard("assets/Promo3.png", "Pesan Sekarang, Cuci 2 Gratis 1"),
                PromoCard("assets/Promo1.png", "Pesan Sekarang, Cuci 2 Gratis 1"),
                PromoCard("assets/Promo1.png", "Pesan Sekarang, Cuci 2 Gratis 1"),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
