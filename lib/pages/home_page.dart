import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: sizeHeight * 0.11,
        title: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: SizedBox(
            width: sizeWidth,
            height: sizeHeight * 0.1,
            child: TextField(
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.grey[200],
                border: const OutlineInputBorder(
                  borderSide: BorderSide.none,
                  borderRadius: BorderRadius.all(Radius.circular(15)),
                ),
                hintText: "Qidirish",
                hintStyle: const TextStyle(color: Colors.grey),
                prefixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.search,
                    color: Colors.grey,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Card(
                  color: Colors.white,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "Super",
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: sizeWidth * 0.1),
                                ),
                                Image.asset(
                                  "assets/icons/1.png",
                                  width: sizeWidth * 0.09,
                                  height: sizeHeight * 0.09,
                                ),
                              ],
                            ),
                            Text(
                              "chegirma",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: sizeWidth * 0.1),
                            ),
                            const Text(
                              "Daron Ajemo‘g‘li, Jeyms A. Robinson: Mamlakatlar\ntanazzuli sabablari: qudrat, farovonlik va kambag‘allik \nmanbalari",
                              style: TextStyle(fontSize: 8),
                            ),
                            const Text(
                              "100.000 so‘m",
                              style: TextStyle(fontWeight: FontWeight.bold),
                            ),
                            Row(
                              children: [
                                containerButton(
                                    sizeWidth: sizeWidth,
                                    sizeHeight: sizeHeight,
                                    text: "Xarid qilish",
                                    select: true),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: sizeWidth * 0.08,
                                  height: 20,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: Color(0xFF08DFB8),
                                  ),
                                  child: const Center(
                                    child: Image(
                                      image:
                                          AssetImage("assets/icons/shop.png"),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        Image.asset(
                          "assets/images/book.png",
                          fit: BoxFit.cover,
                          width: sizeWidth * 0.33,
                          height: sizeHeight * 0.25,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: sizeHeight * 0.03,
              ),
              Text(
                "Hafta tavarlari",
                style: TextStyle(
                    fontWeight: FontWeight.bold, fontSize: sizeWidth * 0.07),
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    _CardButton(sizeWidth, sizeHeight, "book2"),
                    _CardButton(sizeWidth, sizeHeight, "book3"),
                    _CardButton(sizeWidth, sizeHeight, "book7"),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(
                      child: containerButton(
                          sizeWidth: sizeWidth,
                          sizeHeight: sizeHeight+100,
                          text: "Ommabob",
                          select: true)),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: containerButton(
                          sizeWidth: sizeWidth,
                          sizeHeight: sizeHeight+100,
                          text: "chegirmalar",
                          select: false)),
                  const SizedBox(
                    width: 5,
                  ),
                  Expanded(
                      child: containerButton(
                          sizeWidth: sizeWidth,
                          sizeHeight: sizeHeight+100,
                          text: "Yangi kelganlar",
                          select: false)),
                ],
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Expanded(child: _CardButton(sizeWidth, sizeHeight, "book5")),
                  Expanded(child: _CardButton(sizeWidth, sizeHeight, "book6")),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }

  Card _CardButton(
    double sizeWidth,
    double sizeHeight,
    String icon,
  ) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: sizeWidth * 0.4,
          height: sizeHeight * 0.35,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(
                    Icons.favorite_border,
                    size: 20,
                  )
                ],
              ),
              Padding(
                padding: EdgeInsets.all(10),
                child: Image.asset("assets/icons/$icon.png"),
              ),
              Text(
                "Henri Marsh: Ozor berma: Hayot, o'lim va neyrojarrohlik",
                style: TextStyle(fontSize: sizeWidth * 0.02),
              ),
              Text(
                "150.000 so'm",
                style: TextStyle(
                    fontSize: sizeWidth * 0.03,
                    color: Colors.red,
                    decoration: TextDecoration.lineThrough,
                    decorationColor: Colors.red),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "99.000 so'm",
                    style: TextStyle(fontSize: sizeWidth * 0.04),
                  ),
                  const Row(
                    children: [
                      Icon(
                        Icons.star,
                        size: 18,
                        color: Color(0xFFD4CC07),
                      ),
                      Text("5"),
                    ],
                  )
                ],
              ),
              Container(
                height: sizeHeight * 0.04,
                decoration: BoxDecoration(
                  border: Border.all(color: Color(0xFF08DFB8)),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: const Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.calendar_month,
                        size: 20,
                        color: Color(0xFF08DFB8),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Text(
                        "22.12.2023",
                        style: TextStyle(color: Color(0xFF08DFB8)),
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class containerButton extends StatelessWidget {
  const containerButton({
    super.key,
    required this.sizeWidth,
    required this.sizeHeight,
    required this.text,
    required this.select,
  });

  final double sizeWidth;
  final double sizeHeight;
  final String text;
  final bool select;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: sizeWidth * 0.4,
      height: sizeHeight * 0.03,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: select ? Color(0xFF08DFB8) : Colors.grey[200],
      ),
      child: Center(
        child: Text(
          text,
          style: TextStyle(color: select ? Colors.white : Colors.black),
        ),
      ),
    );
  }
}
