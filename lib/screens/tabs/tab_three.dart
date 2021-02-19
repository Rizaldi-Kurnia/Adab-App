import 'package:flutter/material.dart';

class TabThreeScreen extends StatefulWidget {
  @override
  _TabThreeScreenState createState() => _TabThreeScreenState();
}

class _TabThreeScreenState extends State<TabThreeScreen> {
  List<String> asmaNm = [
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
  List<String> asmaAd = [
    "Niat Belajar karena Allah",
    "Selalu Berdoa kepada Allah",
    "Selalu Bersungguh - sungguh Ketika Belajar",
    "Menjauhi Maksiat Ketika Belajar",
    "Harus Selalu Rendah Hati",
    "Harus Memperhatikan penjelasan dari Guru",
    "Diam dan Menyimak penjelasan dari guru",
    "Menghafal Materi yang sudah di berikan Guru",
    "Mengamalkan Pelajaran yang sudah Kita Pelajari",
    "Mendakwahkan Pelajarannya Kepada orang lain",
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.only(top: 16),
        child: ListView.builder(
          itemCount: asmaNm.length,
          itemBuilder: (BuildContext context, int index) {
            final title = asmaNm[index].toString();
            final subTitle = asmaAd[index].toString();

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
