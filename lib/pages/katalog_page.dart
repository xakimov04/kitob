import 'package:flutter/material.dart';

class Katalog extends StatelessWidget {
  const Katalog({super.key});

  @override
  Widget build(BuildContext context) {
    double sizeHeight = MediaQuery.of(context).size.height;

    List<String> text = [
      "Badiiy adabiyotlar",
      "Psixologiya va shaxsiy rivojlanish",
      "Biznes kitoblar",
      "Chet tilini o'rganish",
      "Bolalar adabiyoti",
      "Diniy adabiyotlar",
      "Rus tilidagi kitoblar",
      "IT sohasiga oid kitoblar",
      "Ilm-fan va darsliklar",
    ];
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Kitoblar",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(10),
          child: Column(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.only(left: 15, right: 25),
                  child: InkWell(
                    onTap: () {},
                    child: SizedBox(
                      width: double.infinity,
                      height: sizeHeight * 0.08,
                      child: const Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Barcha mahsulotlar",
                            style: TextStyle(fontSize: 15),
                          ),
                          Icon(
                            Icons.arrow_forward_ios_rounded,
                            size: 20,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              Card(
                child: SizedBox(
                  width: double.infinity,
                  height: sizeHeight * 0.7,
                  child: ListView.builder(
                    itemCount: text.length,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          ListTile(
                            onTap: () {},
                            leading: Text(
                              text[index],
                              style: const TextStyle(fontSize: 15),
                            ),
                            trailing: const Icon(
                              Icons.arrow_forward_ios_rounded,
                              size: 20,
                            ),
                          ),
                          const Padding(
                            padding: EdgeInsets.only(left: 15, right: 15),
                            child: Divider(),
                          ),
                        ],
                      );
                    },
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
