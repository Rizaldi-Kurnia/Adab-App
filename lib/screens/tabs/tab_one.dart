import 'package:flutter/material.dart';

class TabOneScreen extends StatefulWidget {
  @override
  _TabOneScreenState createState() => _TabOneScreenState();
}

class _TabOneScreenState extends State<TabOneScreen> {
  List<String> asmaArab = [
    "1.",
    "2.",
    "3.",
    "4.",
    "5.",
    "6.",
    "7.",
    "8.",
    "9.",
    "10.",
  ];
  List<String> asmaArti = [
    "Membaca Bismillah sebelum makan",
    "Makan Menggunakan tangan Kanan",
    "Di Sunahkan Menggunakan 3 Jari",
    "Memakan Makanan Yang Halal",
    "Menyedikitkan Suapan dan Memperbanyak Kunyahan",
    "Makan Dari yang Terdekat dari Piring",
    "Tidak Meniup Makanan yang panas",
    "Hendaknya Menjilati Jari-Jemarinya Sebelum dicuci",
    "Memungut Makanan yang jatuh ketika saat Makan",
    "Membaca Alhamdulillah Setelah makan",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView.builder(
          itemCount: asmaArab.length,
          itemBuilder: (BuildContext context, int index) {
            final title = asmaArab[index].toString();
            final subTitle = asmaArti[index].toString();

            return Container(
              child: Padding(
                padding: EdgeInsets.all(7.5),
                child: GestureDetector(
                  child: Stack(
                    children: <Widget>[
                      Container(
                        width: MediaQuery.of(context).size.width - 000,
                        padding: const EdgeInsets.all(10),
                        child: ListItem(
                          title,
                          subTitle,
                        ),
                        decoration: BoxDecoration(
                            color: Colors.blue,
                            borderRadius: BorderRadius.circular(10)),
                      )
                    ],
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }

  ListItem(String title, String subTitle) {
    return new Container(
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            title,
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.start,
          ),
          Text(
            subTitle,
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
        ],
      ),
    );
  }
}
