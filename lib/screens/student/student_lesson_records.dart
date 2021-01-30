import 'package:flutter/material.dart';
import 'package:imparoo/screens/student/student_lessons.dart';
import 'package:imparoo/screens/student/student_questions.dart';

import 'student_profile.dart';

class StudentLessonRecords extends StatefulWidget {
  StudentLessonRecords({Key key}) : super(key: key);

  @override
  _StudentLessonRecordsState createState() => _StudentLessonRecordsState();
}

class _StudentLessonRecordsState extends State<StudentLessonRecords> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        toolbarHeight: 100,
        backgroundColor: Colors.white,
        elevation: 0,
        flexibleSpace: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 28.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (_) => StudentProfile()));
                  },
                  child: Icon(
                    Icons.person,
                    size: 40,
                    color: Colors.blue,
                  ),
                ),
                Icon(
                  Icons.settings,
                  size: 40,
                  color: Colors.grey,
                )
              ],
            ),
          ),
        ),
        leading: new Container(),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              width: 300,
              child: Center(
                child: Text(
                  "MATEMATIK DERS KAYITLARI",
                  style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.all(20),
            child: Stack(
              children: [
                Container(
                  height: 110,
                  width: MediaQuery.of(context).size.width - 40,
                  decoration: BoxDecoration(
                    color: Colors.grey[400],
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10, left: 0),
                      height: 80,
                      width: 100,
                      color: Colors.black,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 8.0),
                              child: Text(
                                "Matematik",
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w900),
                              ),
                            ),
                            Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Konu: Toplama",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900),
                                ),
                                Text(
                                  "Sure: 25dk 53sn",
                                  style: TextStyle(
                                      fontSize: 13,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w900),
                                ),
                              ],
                            )
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
                GestureDetector(
                  onTap: () {},
                  child: Container(
                    margin: EdgeInsets.only(top: 100, left: 140),
                    padding: EdgeInsets.only(top: 0),
                    height: 30,
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.greenAccent[400],
                      borderRadius: BorderRadius.all(Radius.circular(10)),
                    ),
                    child: Center(
                      child: Text(
                        "izle",
                        style: TextStyle(
                            fontSize: 13,
                            color: Colors.black,
                            fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: buildBottomNavBar(),
    );
  }

  Container buildBottomNavBar() {
    return Container(
      height: 110,
      decoration: BoxDecoration(
        color: Colors.grey[400],
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30), topRight: Radius.circular(30)),
      ),
      child: Row(
        children: [
          GestureDetector(
            onTap: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (_) => StudentLessons()));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                    child: Image.asset(
                      "assets/images/sayfalar-buton-dersler 1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 0),
                  child: Text(
                    "Derslerim",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => StudentQuestions()));
            },
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                    child: Image.asset(
                      "assets/images/sayfalar-buton-sorular-1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 0),
                  child: Text(
                    "Sorular",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                    child: Image.asset(
                      "assets/images/sayfalar-buton-kayit-2 1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 0),
                  child: Text(
                    "Kayıt",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                    child: Image.asset(
                      "assets/images/sayfalar-buton-odevler 1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 0),
                  child: Text(
                    "Ödevler",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.only(left: 10, top: 10),
                  width: 80,
                  height: 80,
                  child: Center(
                    child: Image.asset(
                      "assets/images/sayfalar-buton-basarim 1.png",
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(left: 10, top: 0),
                  child: Text(
                    "Başarımlar",
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                        fontSize: 15),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
