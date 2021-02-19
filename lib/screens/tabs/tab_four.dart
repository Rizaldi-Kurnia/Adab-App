import 'package:flutter/material.dart';

class TabFourScreen extends StatefulWidget {
  @override
  _TabFourScreenState createState() => _TabFourScreenState();
}

class _TabFourScreenState extends State<TabFourScreen> {
  List<String> asmaNomer = [
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
  List<String> asmaAdab = [
    "Menghormati Guru Kita",
    "Memperhatikan Ketika dia Menjelaskan",
    "Memberi Salam Ketika bertemu",
    "Berjabat Tangan Ketika bertemu",
    "Patuh Perintah Guru",
    "Berbicara Yang Sopan Kepada Guru",
    "Tidak Membantah Perintah Guru",
    "Tidak Menjulurkan Kaki di Depan Guru",
    "Tidak Boleh Melangkahi Guru",
    "Tidak Boleh Melawan Guru",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView.builder(
          itemCount: asmaNomer.length,
          itemBuilder: (BuildContext context, int index) {
            final title = asmaNomer[index].toString();
            final subTitle = asmaAdab[index].toString();

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
