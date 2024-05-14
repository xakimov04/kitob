import 'package:flutter/material.dart';
import 'package:kitob/pages/main_page.dart';

class LanguagesSelect extends StatelessWidget {
  const LanguagesSelect({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: const Color(0xFF08DFB8),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SizedBox(
              height: sizeHeight * 0.09,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/icons/image.png",
                  width: sizeWidth * 0.15,
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  "Kitob",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: sizeWidth * 0.2,
                  ),
                )
              ],
            ),
            Column(
              children: [
                Text(
                  "Tilni tanlang",
                  style: TextStyle(
                      color: Colors.white, fontSize: sizeWidth * 0.09),
                ),
                SizedBox(
                  height: sizeHeight * 0.03,
                ),
                _languageButton(icon: 'uzb', text: "O'zbek tili", select: true),
                const SizedBox(
                  height: 10,
                ),
                _languageButton(
                    icon: 'rus', text: "Русскый язык", select: false),
                const SizedBox(
                  height: 10,
                ),
                _languageButton(
                    icon: 'usa', text: "English Language ", select: false),
              ],
            ),
            Padding(
              padding: EdgeInsets.only(left: sizeWidth * 0.6),
              child: InkWell(
                onTap: () {
                  Navigator.pushReplacement(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const MainPage(),
                      ));
                },
                child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: Colors.white),
                  child: const Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Keyingisi",
                        style: TextStyle(color: Color(0xFF08DFB8)),
                      ),
                      Icon(
                        Icons.arrow_forward,
                        color: Color(0xFF08DFB8),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Padding _languageButton(
      {required String icon, required String text, required bool select}) {
    return Padding(
      padding: const EdgeInsets.only(left: 40, right: 40),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5), color: Colors.white),
        child: Padding(
          padding: const EdgeInsets.only(
            left: 10,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Image.asset(
                "assets/icons/$icon.png",
                width: 40,
                height: 40,
              ),
              Text(
                text,
                style: select
                    ? const TextStyle(fontWeight: FontWeight.bold)
                    : const TextStyle(color: Colors.grey),
              ),
              const SizedBox(
                width: 0.1,
              ),
              Container(),
            ],
          ),
        ),
      ),
    );
  }
}
