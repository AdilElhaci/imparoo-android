import 'package:flutter/material.dart';
import 'package:imparoo/screens/student/student_lessons.dart';
import 'package:imparoo/screens/student/student_questions.dart';
import 'package:imparoo/screens/student/student_recorded_lessons.dart';

import 'student_profile.dart';

class StudentQuestionsOfLesson extends StatefulWidget {
  StudentQuestionsOfLesson({Key key}) : super(key: key);

  @override
  _StudentQuestionsOfLessonState createState() =>
      _StudentQuestionsOfLessonState();
}

class _StudentQuestionsOfLessonState extends State<StudentQuestionsOfLesson> {
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
              width: 200,
              child: Center(
                child: Text(
                  "MATEMATİK",
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          Center(
            child: Container(
              width: 200,
              child: Center(
                child: Text(
                  "SORULARI",
                  style: TextStyle(
                      fontSize: 34,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          MaterialButton(
            onPressed: () {},
            child: Container(
              height: 30,
              width: 120,
              decoration: BoxDecoration(
                color: Colors.greenAccent[700],
                borderRadius: BorderRadius.all(Radius.circular(10)),
              ),
              child: Center(
                child: Text(
                  "SORU SOR",
                  style: TextStyle(
                      fontSize: 13,
                      color: Colors.black,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.only(left: 10),
            width: MediaQuery.of(context).size.width - 20,
            height: 80,
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("12 deste arti 6 duzine kac yapar?",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w900)),
                SizedBox(height: 20),
                Text("3 cevap",
                    style: TextStyle(
                        fontSize: 13,
                        color: Colors.black,
                        fontWeight: FontWeight.w900))
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
                      "assets/images/sayfalar-buton-sorular-2 1.png",
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
            onTap: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (_) => StudentRecordedLesson()));
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
                      "assets/images/sayfalar-buton-kayit 1.png",
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
