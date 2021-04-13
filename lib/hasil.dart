import 'dart:ui';
import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input.dart';

class hasil extends StatelessWidget {


  hasil({@required this.nama, @required this.nmsampah,  @required this.beratsampah,  @required this.harga,});

  final String nama;
  final String nmsampah;
  final int beratsampah;
  final int harga;


  @override
  Widget build(BuildContext context) {
    int jumlah = beratsampah * harga;
    String total = "$jumlah";
    String hrgbarang = "$harga";
    String berat ="$beratsampah";


    return Scaffold(
      backgroundColor: Colors.deepOrangeAccent,
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        centerTitle: true,
        title: Text("Hasil Perhitungan"),
      ),

      body:
      Container(
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[

            Container(
              padding: EdgeInsets.all(10),
              child: Card(
                child: Row(
                  children: <Widget>[
                    Icon(Icons.person),
                    Text('Nama              : ' +nama,),
                  ],
                ),
              )
            ),

            Container(
                padding: EdgeInsets.all(10),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.restore_from_trash),
                      Text('Nama Sampah     : ' +nmsampah,),
                    ],
                  ),
                )
            ),

            Container(
                padding: EdgeInsets.all(10),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.restore_from_trash),
                      Text('Berat Sampah     : ' +berat ,),
                    ],
                  ),
                )
            ),

            Container(
                padding: EdgeInsets.all(10),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.restore_from_trash),
                      Text('Harga/kg Sampah   : Rp.' +hrgbarang,),
                    ],
                  ),
                )
            ),

            Container(
                padding: EdgeInsets.all(10),
                child: Card(
                  child: Row(
                    children: <Widget>[
                      Icon(Icons.restore_from_trash),
                      Text('Total Penjualan   : Rp.' +total,),
                    ],
                  ),
                )
            ),


          ],
        ),
      )



    );
  }
}

