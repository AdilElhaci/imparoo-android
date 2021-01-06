import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:imparoo/auth/student/student_login.dart';
import 'package:imparoo/auth/teacher/teacher_login.dart';
import 'package:imparoo/models/Student.dart';
import 'package:imparoo/models/Teacher.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  List<Student> students;
  List<Teacher> teachers;

  final db = FirebaseFirestore.instance;

  Future<void> getStudents() async {
    await db.collection("student").get().then((QuerySnapshot querySnapshot) => {
          querySnapshot.docs.forEach((doc) {
            setState(() {
              Student item = Student(
                  name: doc["name"].toString(),
                  pass: doc["pass"].toString(),
                  phone: doc["phone"].toString(),
                  surname: doc["surname"].toString());
              students?.insert(0, item);
            });
          }),
        });
  }

  Future<void> getTeachers() async {
    await db.collection("teacher").get().then((QuerySnapshot querySnapshot) => {
          querySnapshot.docs.forEach((doc) {
            setState(() {
              Teacher item = Teacher(
                  name: doc["name"].toString(),
                  pass: doc["pass"].toString(),
                  phone: doc["phone"].toString(),
                  surname: doc["surname"].toString());
              teachers?.insert(0, item);
            });
          }),
        });
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    students = List<Student>();
    teachers = List<Teacher>();
    getStudents();
    getTeachers();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        //alertdialog
      },
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            child: Stack(
              children: [
                Container(
                  height: MediaQuery.of(context).size.height,
                  width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    "assets/images/background.png",
                    fit: BoxFit.fill,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 70, bottom: 20),
                      child: Center(
                        child: Text(
                          "GİRİŞ",
                          style: TextStyle(
                              fontSize: 50, fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                    Container(
                        padding: EdgeInsets.only(top: 00),
                        height: 80,
                        width: 280,
                        child: Image.asset(
                          "assets/images/imparoo.png",
                          fit: BoxFit.fill,
                        )),
                  ],
                ),
                Positioned(
                  bottom: 230,
                  left: 30,
                  right: 30,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => StudentLogin(students)));
                    },
                    child: Container(
                      height: 60,
                      width: 180,
                      child: Image.asset(
                        "assets/images/ogrenciGirisButon.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 140,
                  left: 30,
                  right: 30,
                  child: FlatButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (_) => TeacherLogin(teachers)));
                    },
                    child: Container(
                      color: Colors.transparent,
                      height: 60,
                      width: 180,
                      child: Image.asset(
                        "assets/images/ogretmenGirisButon.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
