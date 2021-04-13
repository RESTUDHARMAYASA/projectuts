import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'input.dart';

class Login extends StatelessWidget {

  var _email = new TextEditingController();
  var _nim = new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(8),
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: [Colors.yellowAccent, Colors.deepOrangeAccent],
              begin: Alignment.bottomCenter,
              end: Alignment.topCenter),
        ),
        child: Column(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(top: 20),
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.white54,
                  shape: BoxShape.circle
              ),
              child: Center(
                child: Icon(Icons.person, size: 60, color: Colors.black,),
              ),
            ),

            SizedBox(height: 20,),

            Text("Silahkan Masukan Akun Email Undiksha",
              style: TextStyle(fontSize: 20, color: Colors.black, fontWeight: FontWeight.bold),),

            SizedBox(height: 20,),

            TextFormField(
              controller: _email,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38),
                  ),
                  prefixIcon: Icon(Icons.account_circle_rounded, size: 20, color: Colors.black,),
                  hintText: "Masukan Email Undiksha",
                  hintStyle: TextStyle(color: Colors.black38),
                  labelText: "Email"
              ),
            ),

            SizedBox(height: 20,),

            TextFormField(
              obscureText: true,
              controller: _nim,
              decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black38),
                  ),
                  prefixIcon: Icon(Icons.vpn_key_rounded , size: 20, color: Colors.black,),
                  hintText: "Masukan NIM/Password Undiksha",
                  hintStyle: TextStyle(color: Colors.black38),
                  labelText: "Password"
              ),
            ),

            SizedBox(height: 20,),

            Container(
              margin: EdgeInsets.only(left: 10, right: 10,),
              child: RaisedButton(
                onPressed: () {
                  Navigator.push(context, MaterialPageRoute
                    (builder: (context) => Home())
                  );
                },
                padding: EdgeInsets.only(top: 10, bottom: 10),
                color: Colors.white54,
                child: Text(
                  "Masuk",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold, color: Colors.black),
                ),
              ),
            )
          ],
        ),
      ),
    );

  }
}
