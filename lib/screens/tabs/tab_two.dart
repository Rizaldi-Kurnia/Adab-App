import 'package:flutter/material.dart';

class TabTwoScreen extends StatefulWidget {
  @override
  _TabTwoScreenState createState() => _TabTwoScreenState();
}

class _TabTwoScreenState extends State<TabTwoScreen> {
  List<String> asmaNo = [
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
  List<String> asmaNa = [
    "Membaca Do'a Sebelum Masuk",
    "Masuk Menggunakan Kaki Kiri Terlebih dahulu",
    "Dilarang Membawa Barang yang Ada Lafadz Allah",
    "Jangan Berlama lama di Kamar Mandi",
    "Jangan Menghadap & Membelakangi Kiblat",
    "Diam Ketika Kita berada di Kamar Mandi",
    "Membersihkan Najis Menggunakan Tangan Kiri",
    "Memercikan Air untuk Menghilangkan Was Was",
    "Membaca Do'a Ketika Keluar",
    "Keluar Menggunakan Kaki Kanan Terlebih dahulu",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView.builder(
          itemCount: asmaNo.length,
          itemBuilder: (BuildContext context, int index) {
            final title = asmaNo[index].toString();
            final subTitle = asmaNa[index].toString();

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
