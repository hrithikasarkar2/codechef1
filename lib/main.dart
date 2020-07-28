import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(   
      body: Center(
        child: UpdateText()
      ),
      )
    );
  }
}

class UpdateText extends StatefulWidget {
  @override
  UpdateTextState createState() => UpdateTextState();
}

class UpdateTextState extends State {
  String first = 'Hello';
  changeText(){
    setState(() {
      first = 'RA1911003010674';
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Code Chef SRM Chapter',
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(1.0),
            child: Text(
              "$first",
              style: TextStyle(
                  fontSize: 35.0,
                  fontWeight: FontWeight.w400,
              ), 
            ),
            ),
            RaisedButton(
              onPressed: () => changeText(),
              color: Colors.blue,
              padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 20.0),
              child: Text(
                "CLICK HERE",
                style: TextStyle(
                  fontSize: 10.0,
                  fontWeight: FontWeight.w500,
                  color: Colors.white,
                ),
              )
            )
          ],
        )
      )
    );
  }
}