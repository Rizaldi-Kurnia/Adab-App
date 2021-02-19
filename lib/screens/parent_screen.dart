import 'package:adab_app/screens/tabs/tab_five.dart';
import 'package:adab_app/screens/tabs/tab_four.dart';
import 'package:adab_app/screens/tabs/tab_one.dart';
import 'package:adab_app/screens/tabs/tab_three.dart';
import 'package:adab_app/screens/tabs/tab_two.dart';
import 'package:flutter/material.dart';

class ParentScreen extends StatefulWidget {
  @override
  _ParentScreenState createState() => _ParentScreenState();
}

class _ParentScreenState extends State<ParentScreen> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 5,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Aplikasi Adab', style: TextStyle(color: Colors.black)),
          centerTitle: true,
          elevation: 0,
          backgroundColor: Colors.white,
          bottom: TabBar(
              isScrollable: true,
              indicatorSize: TabBarIndicatorSize.label,
              unselectedLabelColor: Colors.blue,
              indicator: BoxDecoration(
                  borderRadius: BorderRadius.circular(50), color: Colors.blue),
              tabs: [
                Tab(
                    child: Container(
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      border: Border.all(color: Colors.blue)),
                  child: Align(
                      alignment: Alignment.center,
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16.0),
                        child: Text('Adab Makan'),
                      )),
                )),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.blue)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('Adab Di Kamar Mandi'),
                        )),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.blue)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('Adab Belajar'),
                        )),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.blue)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('Adab Kepada Guru'),
                        )),
                  ),
                ),
                Tab(
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.blue)),
                    child: Align(
                        alignment: Alignment.center,
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 16.0),
                          child: Text('Adab Kepada Orang Tua'),
                        )),
                  ),
                ),
              ]),
        ),
        body: TabBarView(
          children: [
            TabOneScreen(),
            TabTwoScreen(),
            TabThreeScreen(),
            TabFourScreen(),
            TabFiveScreen(),
          ],
        ),
      ),
    );
  }
}
