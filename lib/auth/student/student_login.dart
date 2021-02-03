import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:imparoo/models/Student.dart';
import 'package:imparoo/screens/student/student_lessons.dart';

// ignore: must_be_immutable
class StudentLogin extends StatefulWidget {
  StudentLogin(this.students, {Key key}) : super(key: key);
  List<Student> students;

  @override
  _StudentLoginState createState() => _StudentLoginState();
}

class _StudentLoginState extends State<StudentLogin> {
  String loginMsg;
  TextEditingController phoneText = TextEditingController();
  TextEditingController passText = TextEditingController();

  loginControl() {
    for (var i = 0; i < widget.students?.length; i++) {
      if (phoneText.text == widget.students[i].phone &&
          passText.text == widget.students[i].pass) {
        setState(() {
          loginMsg = "GİRİŞ BAŞARILI :)";
        });
        break;
      }
      setState(() {
        loginMsg = "GİRİŞ BAŞARISIZ :(";
      });
    }
    showAlertDialog(context);
  }

  showAlertDialog(BuildContext context) {
    // set up the AlertDialog

    AlertDialog alert = AlertDialog(
      backgroundColor: Colors.transparent,
      content: Container(
        height: 180,
        width: 280,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.all(Radius.circular(10))),
        child: Container(
          child: Center(
            child: Text(
              loginMsg,
              style: TextStyle(
                  color: Colors.white, fontFamily: 'Comfortaa', fontSize: 20),
            ),
          ),
        ),
      ),
    );

    // show the dialog
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
          child: alert,
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                        "HOŞGELDİN",
                        style: TextStyle(
                            fontSize: 35, fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.only(top: 00),
                      height: 40,
                      width: 140,
                      child: Image.asset(
                        "assets/images/imparoo.png",
                      )),
                  Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Center(
                      child: Text(
                        "Öğrenci Girişi",
                        style: TextStyle(
                            fontSize: 35,
                            fontWeight: FontWeight.bold,
                            color: Colors.blue.shade900),
                      ),
                    ),
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: 160,
                        padding: EdgeInsets.only(top: 60, left: 60, right: 60),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  left: 15, right: 60, bottom: 10),
                              child: Text(
                                "Telefon Numarası",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              height: 60,
                              child: TextField(
                                controller: phoneText,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.only(right: 10, left: 10)),
                                onSubmitted: (value) {
                                  setState(() {
                                    phoneText.text = value;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      ),
                      Container(
                        height: 160,
                        padding: EdgeInsets.only(top: 30, left: 60, right: 60),
                        child: Column(
                          children: [
                            Container(
                              width: MediaQuery.of(context).size.width,
                              padding: EdgeInsets.only(
                                  left: 15, right: 60, bottom: 10),
                              child: Text(
                                "Şifre",
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 24,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                            Container(
                              decoration: BoxDecoration(
                                  color: Colors.grey[200],
                                  borderRadius:
                                      BorderRadius.all(Radius.circular(30))),
                              height: 60,
                              child: TextField(
                                controller: passText,
                                decoration: InputDecoration(
                                    border: InputBorder.none,
                                    focusedBorder: InputBorder.none,
                                    enabledBorder: InputBorder.none,
                                    errorBorder: InputBorder.none,
                                    disabledBorder: InputBorder.none,
                                    contentPadding:
                                        EdgeInsets.only(right: 10, left: 10)),
                                onSubmitted: (value) {
                                  setState(() {
                                    passText.text = value;
                                  });
                                },
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  FlatButton(
                    onPressed: () {
                      //loginControl(); //Ogrenci girisi
                      Navigator.push(context,
                          MaterialPageRoute(builder: (_) => StudentLessons()));
                    },
                    child: Container(
                      height: 60,
                      width: 180,
                      child: Image.asset(
                        "assets/images/girisbuton.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  FlatButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: Container(
                      color: Colors.transparent,
                      height: 60,
                      width: 180,
                      child: Image.asset(
                        "assets/images/geributon.png",
                        fit: BoxFit.fill,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
