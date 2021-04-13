import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'hasil.dart';
import 'setting.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  String nmpembeli = '';
  String nmsampah = '';
  int bbsampah = 0;
  int harga = 0;



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: Text("Aplikasi Menghitung Harga Sampah"),
        actions: <Widget>[
          Container(
            width: 50,
            height: 50,
            decoration: BoxDecoration(
              color: Colors.deepOrange[200],
              shape: BoxShape.circle
            ),
            child: Center(
              child: IconButton(
                icon: const Icon((Icons.person)),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => profil(
                    nama : nmpembeli,
                  )));
                },
              ),
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget>[

            Container(
              margin: EdgeInsets.only(top: 5),
              child: Image.asset('assets/banksampah.jpg', fit: BoxFit.fitWidth,),
            ),


          Container(
            margin: EdgeInsets.only(top: 10),
            padding: EdgeInsets.all(10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Text("Masukan Nama"),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.lightGreenAccent
                      ),
                      child: TextField(
                        onChanged: (txt){
                          setState(() {
                            nmpembeli = txt;
                          });
                        },
                        decoration:
                        InputDecoration(filled: true),
                      ),
                    ),

                  SizedBox(height: 20,),

                  Text("Masukan Nama/Jenis Sampah"),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent
                    ),
                    child: TextField(
                      onChanged: (txt){
                        setState(() {
                          nmsampah = txt;
                        });
                      },
                      decoration:
                      InputDecoration(filled: true),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Text("Masukan Berat Sampah (kg)"),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent
                    ),
                    child: TextField(
                      onChanged: (txt){
                        setState(() {
                          bbsampah = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration:
                      InputDecoration(filled: true),
                    ),
                  ),

                  SizedBox(height: 20,),

                  Text("Masukan Harga/kg Sampah"),
                  Container(
                    decoration: BoxDecoration(
                        color: Colors.lightGreenAccent
                    ),
                    child: TextField(
                      onChanged: (txt){
                        setState(() {
                          harga = int.parse(txt);
                        });
                      },
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.start,
                      style: TextStyle(
                        fontSize: 20,
                      ),
                      decoration:
                      InputDecoration(filled: true),
                    ),
                  ),

                  Container(
                    margin: EdgeInsets.only(left: 40, right: 40, top: 20, bottom: 10,),
                    child: RaisedButton(
                      onPressed: (){
                        Navigator.push(context,
                        MaterialPageRoute(
                          builder: (context) => hasil(
                            nama: nmpembeli,
                            nmsampah: nmsampah,
                            beratsampah : bbsampah,
                            harga : harga,
                          )),
                        );
                      },
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      color: Colors.deepOrange,
                      child: Text('Selesai',
                      style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.white),
                      ),
                    ),
                  )
                ],
            ),
          )
          ],
        ),
      ),
    );
  }
}
