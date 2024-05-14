import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeWidth = MediaQuery.of(context).size.width;
    double sizeHeight = MediaQuery.of(context).size.height;
    List<Map> text = [
      {
        "text": "Eslatmalar",
        "icon": Icons.notifications_none_outlined,
      },
      {
        "text": "Ko'p so'raladigan savollar",
        "icon": Icons.info_outline,
      },
      {
        "text": "Olib ketish punktlari",
        "icon": Icons.location_on_outlined,
      },
      {
        "text": "Biz bilan bog'lanish",
        "icon": Icons.headphones_outlined,
      },
      {
        "text": "Do'stlarni taklif qilish",
        "icon": Icons.share_outlined,
      },
      {
        "text": "Ilova tili",
        "icon": Icons.language_outlined,
      },
      {
        "text": "Biz haqimizda",
        "icon": Icons.info_outline,
      },
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Profil",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 50, right: 50, top: 30,bottom: 30),
                child: Image.asset("assets/images/profil_kitob.png"),
              ),
              const SizedBox(
                height: 10,
              ),
              Card(
                child: SizedBox(
                  width: double.infinity,
                  height: sizeHeight * 0.5,
                  child: ListView.builder(
                    itemCount: text.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            leading: Icon(text[index]["icon"]),
                            title: Text(text[index]["text"]),
                            trailing:
                                const Icon(Icons.arrow_forward_ios_rounded),
                          ),
                          const Divider(),
                        ],
                      );
                    },
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10, left: 15, right: 15),
                child: Image.asset("assets/images/image.png"),
              ),
              const SizedBox(
                height: 15,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 60, right: 60),
                child: ElevatedButton(
                  style: ButtonStyle(
                      backgroundColor:
                          MaterialStateProperty.all(Color(0xFF08DFB8))),
                  onPressed: () {},
                  child: const Center(
                    child: Text(
                      "KIRISH",
                      style: TextStyle(color: Colors.white, fontSize: 25),
                    ),
                  ),
                ),
              ),
              const Text("Ro‘yhatdan o‘tish"),
              Divider(endIndent: sizeWidth * 0.33, indent: sizeWidth * 0.33)
            ],
          ),
        ),
      ),
    );
  }
}
