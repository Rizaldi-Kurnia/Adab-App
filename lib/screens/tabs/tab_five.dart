import 'package:flutter/material.dart';

class TabFiveScreen extends StatefulWidget {
  @override
  _TabFiveScreenState createState() => _TabFiveScreenState();
}

class _TabFiveScreenState extends State<TabFiveScreen> {
  List<String> asmaNmr = [
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
  List<String> asmaAdb = [
    "Harus Patuh Perintah Orang tua",
    "Tidak Boleh Membantah Perintah Orang tua",
    "Tidak Boleh Bilang AH, Kepada Orang Tua",
    "Harus Sopan Kepada Orang Tua",
    "Suara Kita Harus Lebih Pelan dari Orang Tua",
    "Harus Membantu Orang tua Kita",
    "Mendoakan Orang Tua Kita Dimanapun kita berada",
    "Tidak Boleh Membentak Orang tua",
    "Harus Berbicara dengan Sopan",
    "Merendah dengan Penuh Kasih sayang",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView.builder(
          itemCount: asmaNmr.length,
          itemBuilder: (BuildContext context, int index) {
            final title = asmaNmr[index].toString();
            final subTitle = asmaAdb[index].toString();

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
