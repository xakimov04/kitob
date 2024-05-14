import 'package:flutter/material.dart';
import 'package:kitob/pages/home_page.dart';

class SavatPage extends StatelessWidget {
  const SavatPage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text("Savatcha",
            style: TextStyle(fontWeight: FontWeight.bold)),
      ),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      child: containerButton(
                          sizeWidth: sizeWidth,
                          sizeHeight: sizeHeight + 500,
                          text: "Standart",
                          select: true),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Expanded(
                      child: containerButton(
                          sizeWidth: sizeWidth,
                          sizeHeight: sizeHeight + 500,
                          text: "Muddatli To'lov",
                          select: false),
                    ),
                  ],
                ),
                SavatchaCard(
                    sizeHeight: sizeHeight,
                    text:
                        "Henri Marsh: Ozor berma: \nHayot, o'lim va neyrojarrohlik",
                    text2: "99.000 so‘m",
                    icon: "book2",
                    text3: "1"),
                SavatchaCard(
                    sizeHeight: sizeHeight,
                    text:
                        "Brett King: Bank 4.0 Doim\nsiz bilan - hozir va shu yerda",
                    text2: "99.000 so‘m",
                    icon: "book3",
                    text3: "2"),
              ],
            ),
            Card(
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Umumiy: 297.000 so‘m",
                            style: TextStyle(
                                fontSize: 15, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "3 ta mahsulot",
                            style: TextStyle(color: Colors.grey),
                          )
                        ],
                      ),
                      containerButton(
                        sizeWidth: sizeWidth,
                        sizeHeight: sizeHeight + 200,
                        text: "Buyurtma qilish",
                        select: true,
                      ) ,
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class SavatchaCard extends StatelessWidget {
  const SavatchaCard({
    super.key,
    required this.sizeHeight,
    required this.text,
    required this.text2,
    required this.icon,
    required this.text3,
  });
  final String text;
  final String text2;
  final String text3;
  final String icon;
  final double sizeHeight;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: SizedBox(
        width: double.infinity,
        height: sizeHeight * 0.19,
        child: Padding(
          padding: const EdgeInsets.only(left: 10, top: 18, bottom: 18),
          child: Stack(
            children: [
              Row(
                children: [
                  Image.asset(
                    "assets/icons/$icon.png",
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10, bottom: 15),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          text,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 15),
                        ),
                        Text(
                          text2,
                          style: const TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const Positioned(
                  right: 5,
                  child: Icon(
                    Icons.delete_outline,
                    size: 20,
                    color: Colors.red,
                  )),
              Positioned(
                bottom: 1,
                right: 5,
                child: Row(
                  children: [
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color(0xFF08DFB8),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Center(
                        child: Text(
                          "+",
                          style: TextStyle(color: Colors.white, fontSize: 15),
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 5,
                    ),
                    Text(text3),
                    const SizedBox(
                      width: 5,
                    ),
                    Container(
                      width: 20,
                      height: 20,
                      decoration: BoxDecoration(
                          color: const Color(0xFF08DFB8),
                          borderRadius: BorderRadius.circular(2)),
                      child: const Center(
                        child: Text(
                          "-",
                          style: TextStyle(color: Colors.white, fontSize: 20),
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
