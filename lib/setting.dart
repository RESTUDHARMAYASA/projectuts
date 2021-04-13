import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input.dart';

class profil extends StatelessWidget {

  profil({@required this.nama});

  final String nama;

  @override
  Widget build(BuildContext context) {
      return Scaffold(
        backgroundColor: Colors.blueGrey,
        appBar: new AppBar(
            backgroundColor: Colors.deepOrange ,
            title: new Center(
              child: new Text("Profil Development"),
            )),

        body: Center(
          child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Container(
                  margin: EdgeInsets.all(20),
                  padding: EdgeInsets.all(10),
                  child: Text("Selamat Datang $nama",
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white) ,),
                ),
                Container(
                  margin: EdgeInsets.only(bottom: 10),
                  padding: EdgeInsets.all(10),
                  child: Text("Berikut Profil Development Aplikasi Bank Sampah",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w400, color: Colors.white) ,),

                ),
                Container(
                  height: 95,
                  width: 90,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      image: DecorationImage(
                          image: AssetImage('assets/restu.png'), fit: BoxFit.cover)),
                ),

                Text(
                  "Restu Dharma Yasa",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    height: 2.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "1915051094",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15.0,
                    height: 1.0,
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(top: 40.0),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                            color: Colors.lightGreenAccent,
                            margin: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.my_location,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Buleleng',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    height: 2.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )),
                      ),
                      Expanded(
                        child: Card(
                            color: Colors.deepOrangeAccent,
                            margin: EdgeInsets.only(
                              left: 10.0,
                              right: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.home,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Desa Dencarik',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    height: 2.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
                Card(
                  margin: EdgeInsets.only(top: 10.0, bottom: 10, left: 10, right: 10),
                  child: Row(
                    children: <Widget>[
                      Expanded(
                        child: Card(
                            color: Colors.yellow,
                            margin: EdgeInsets.only(left: 10.0, right: 10.0),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.music_note,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  'EDM',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    height: 2.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )),
                      ),
                      Expanded(
                        child: Card(
                            color: Colors.lightBlueAccent,
                            margin: EdgeInsets.only(
                              left: 10.0,
                              right: 10.0,
                              top: 10.0,
                              bottom: 10.0,
                            ),
                            child: Column(
                              children: <Widget>[
                                Icon(
                                  Icons.location_city,
                                  size: 30,
                                  color: Colors.black,
                                ),
                                Text(
                                  'Undiksha',
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 17.0,
                                    height: 2.0,
                                    fontWeight: FontWeight.bold,
                                  ),
                                )
                              ],
                            )),
                      )
                    ],
                  ),
                ),
              ]),
        ),
      );
  }
}
