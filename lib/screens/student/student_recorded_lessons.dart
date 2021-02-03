import 'package:flutter/material.dart';
import 'package:imparoo/screens/student/student_lesson_records.dart';
import 'package:imparoo/screens/student/student_lessons.dart';
import 'package:imparoo/screens/student/student_questions.dart';

import 'student_profile.dart';

class StudentRecordedLesson extends StatefulWidget {
  StudentRecordedLesson({Key key}) : super(key: key);

  @override
  _StudentRecordedLessonState createState() => _StudentRecordedLessonState();
}

class _StudentRecordedLessonState extends State<StudentRecordedLesson> {
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
                  "DERS KAYITLARI",
                  style: TextStyle(
                      fontSize: 30,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => StudentLessonRecords()));
            },
            child: Container(
              margin: EdgeInsets.only(top: 20),
              padding: EdgeInsets.only(left: 10),
              width: MediaQuery.of(context).size.width - 20,
              height: 100,
              decoration: BoxDecoration(
                color: Colors.red[100],
                borderRadius: BorderRadius.all(Radius.circular(20)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text("MATEMATIK",
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.black,
                          fontWeight: FontWeight.w900)),
                ],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width - 20,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red[100],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("TURKCE",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w900)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width - 20,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red[100],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("FEN BILGISI",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w900)),
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            padding: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width - 20,
            height: 100,
            decoration: BoxDecoration(
              color: Colors.red[100],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text("SOSYAL BILGILER",
                    style: TextStyle(
                        fontSize: 24,
                        color: Colors.black,
                        fontWeight: FontWeight.w900)),
              ],
            ),
          )
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
