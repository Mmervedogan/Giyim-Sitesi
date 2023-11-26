import 'package:deneme/ForgotPassword.dart';
import 'package:flutter/material.dart';
import 'Signup.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
            gradient: new LinearGradient(
          colors: [Colors.green.shade400, Colors.white],
        )),
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: Stack(
            children: [
              Container(
                height: height * 0.15,
              ),
              Container(
                margin: EdgeInsets.only(top: height * 0.15),
                height: height * 0.85,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(50),
                        topRight: Radius.circular(50))),
                child: ListView(
                  children: [
                    Text(
                      'Kocaeli Üniversitesi Bilgi Sistemi'.toUpperCase(),
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: height * 0.01,
                    ),
                    Center(
                      child: Container(
                        height: 1,
                        width: width * 0.8,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.1,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.text,
                          decoration: InputDecoration(
                            hintText: "Öğrenci No",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold, letterSpacing: 1.8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Colors.green),
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            contentPadding: EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Colors.grey),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(horizontal: width * 0.05),
                      child: TextField(
                          textAlign: TextAlign.center,
                          keyboardType: TextInputType.text,
                          obscureText: true,
                          decoration: InputDecoration(
                            hintText: "Şifre",
                            hintStyle: TextStyle(
                                fontWeight: FontWeight.bold, letterSpacing: 1.8),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Colors.green),
                            ),
                            filled: true,
                            fillColor: Colors.grey[200],
                            contentPadding: EdgeInsets.all(12),
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(20),
                              borderSide: BorderSide(
                                  width: 1,
                                  style: BorderStyle.solid,
                                  color: Colors.grey),
                            ),
                          )),
                    ),
                    SizedBox(
                      height: height * 0.08,
                    ),
                    Center(
                      child: Container(
                        padding:
                            EdgeInsets.symmetric(horizontal: 26, vertical: 10),
                        decoration: BoxDecoration(
                            gradient: new LinearGradient(
                                colors: [Colors.green, Colors.green.shade400]),
                            borderRadius: BorderRadius.circular(20),
                            boxShadow: [
                              BoxShadow(
                                  blurRadius: 4,
                                  color: Colors.green.shade400,
                                  offset: Offset(2, 2))
                            ]),
                        child: Text(
                          "Giriş".toUpperCase(),
                          style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              letterSpacing: 1.7),
                          textAlign: TextAlign.center,
                        ),
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => ForgotPassword()));
                      },
                      child: Text(
                        "Şifremi unuttum?".toUpperCase(),
                        style: TextStyle(
                            fontSize: 18,
                            color: Colors.green,
                            //  fontWeight: FontWeight.bold,
                            letterSpacing: 1.7),
                        textAlign: TextAlign.center,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.05,
                    ),
                    Center(
                      child: Container(
                        height: 1,
                        width: width * 0.8,
                        color: Colors.grey,
                      ),
                    ),
                    SizedBox(
                      height: height * 0.04,
                    ),
                    Text(
                      "Hesabın yok?".toUpperCase(),
                      style: TextStyle(
                          fontSize: 16,
                          // color: Colors.green,
                          //  fontWeight: FontWeight.bold,
                          letterSpacing: 1.7),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(
                      height: height * 0.03,
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Signup()));
                      },
                      child: Center(
                        child: Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                          decoration: BoxDecoration(
                              gradient: new LinearGradient(
                                  colors: [Colors.green, Colors.green.shade400]),
                              borderRadius: BorderRadius.circular(20),
                              boxShadow: [
                                BoxShadow(
                                    blurRadius: 4,
                                    color: Colors.green.shade400,
                                    offset: Offset(2, 2))
                              ]),
                          child: Text(
                            "Kayıt ol".toUpperCase(),
                            style: TextStyle(
                                fontSize: 16,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                letterSpacing: 1.7),
                            textAlign: TextAlign.center,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
