import 'package:flutter/material.dart';

class SevimlilarPage extends StatelessWidget {
  const SevimlilarPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Sevimlilar",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(1),
        child: Column(
          children: [
            SevimliCard(
              sizeHeight: sizeHeight,
              text: "Henri Marsh: Ozor berma: \nHayot, o'lim va neyrojarrohlik",
              icon: "book2",
            ),
            SevimliCard(
              sizeHeight: sizeHeight,
              text:
                  "Brett King: Bank 4.0 Doim siz\nbilan - hozir va shu yerda",
              icon: "book3",
            ),
            SevimliCard(
              sizeHeight: sizeHeight,
              text: "Devid Nikolls: Bir kun.\nBir muhabbat tarixi",
              icon: "book7",
            )
          ],
        ),
      ),
    );
  }
}

class SevimliCard extends StatelessWidget {
  const SevimliCard({
    super.key,
    required this.sizeHeight,
    required this.text,
    required this.icon,
  });
  final String text;
  final String icon;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 18, bottom: 18),
          child: Stack(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/icons/$icon.png",
                    width: 120,
                    height: 120,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 5),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 12),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              "99.000 so'm",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 15),
                            ),
                            const Text(
                              "150.000 so'm",
                              style: TextStyle(
                                  color: Colors.red,
                                  decoration: TextDecoration.lineThrough,
                                  decorationColor: Colors.red),
                            ),
                            Row(
                              children: [
                                for (var i = 0; i < 5; i++)
                                  const Icon(
                                    Icons.star,
                                    color: Color(0xFFFFCC18),
                                  ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Positioned(
                  right: 10,
                  child: Icon(
                    Icons.favorite,
                    size: 20,
                    color: Colors.red,
                  )),
              Positioned(
                bottom: 1,
                right: 10,
                child: Container(
                  width: 25,
                  height: 25,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color(0xFF08DFB8),
                  ),
                  child: const Icon(
                    Icons.shopping_cart,
                    size: 15,
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
