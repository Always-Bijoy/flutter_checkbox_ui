import 'package:flutter/material.dart';

class CheckBoxInListview extends StatefulWidget {
  @override
  _CheckBoxInListviewState createState() => _CheckBoxInListviewState();
}

class _CheckBoxInListviewState extends State<CheckBoxInListview> {
  bool _isChecked = false;

  List<String> _texts = [
    "InduceSmile.com," "Flutter.io",
    "google.com",
    "youtube.com",
    "yahoo.com",
    "gmail.com"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CheckBox in ListView Example"),
      ),
      body: Column(
        children: [
          Container(
            height: 10,
            color: Colors.red,
          ),
          ListView(
            shrinkWrap: true,
            padding: EdgeInsets.all(8.0),
            children: _texts.map((text) => CheckboxListTile(
              title: Text(text),
              value: _isChecked,
              onChanged: (val) {
                setState(() {
                  _isChecked = val;
                });
              },
            )).toList(),
          ),
        ],
      ),
    );
  }
}