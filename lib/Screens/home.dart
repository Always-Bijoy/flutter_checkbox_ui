import 'package:category_ui_mamun/components/decoration_container.dart';
import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List<bool> _isChecked;
  List<bool> _isCheckedGender;
  List<bool> _isCheckedRated;
  List<bool> _isCheckedPrice;

  List<String> _texts = [
    "Spray",
    "Oil",
    "Ambiance",
    "Natural",
  ];
  List<String> _textsGender = [
    "Unisex",
    "Female",
    "Male",
  ];
  List<String> _textsRated = [
    "*****",
    "****",
    "***",
    "**",
    "*",
  ];
  List<String> _textsPrice = [
    "Under USD 50",
    "USD 50-99",
    "USD 100-149",
    "USD 150-199",
    "USD 200-249",
    "USD 250-499",
    "USD 499-9999",
  ];

  @override
  void initState() {
    super.initState();
    _isChecked = List<bool>.filled(_texts.length, false);
    _isCheckedGender = List<bool>.filled(_textsGender.length, false);
    _isCheckedRated = List<bool>.filled(_textsRated.length, false);
    _isCheckedPrice = List<bool>.filled(_textsPrice.length, false);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(children: [
          SizedBox(height: 20,),
          Category(
            texts: _texts,
            isChecked: _isChecked,
            title: 'Category',
            borderBottom: 1,
          ),
          Category(
            texts: _textsGender,
            isChecked: _isCheckedGender,
            title: 'Gender',
            borderTop: 1,
            borderBottom: 1,
          ),
          Category(
            texts: _textsRated,
            isChecked: _isCheckedRated,
            title: "Customer's Top Rated",
            borderTop: 1,
            borderBottom: 1,
          ),
          Category(
            texts: _textsPrice,
            isChecked: _isCheckedPrice,
            title: "Price",
            borderTop: 1,
            borderBottom: 1,
            container: Container(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Custom Price Range',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: '1',
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 8),
                        child: Text('to'),
                      ),
                      SizedBox(
                        width: 80,
                        height: 40,
                        child: TextField(
                          textAlign: TextAlign.center,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                            hintText: 'MAX',
                            contentPadding: EdgeInsets.zero,
                          ),
                        ),
                      ),
                      SizedBox(width: 6,),
                      Text('GO',style: TextStyle(
                        color: Color(0xFFA8BF7D),
                        fontSize: 22,
                          decoration: TextDecoration.underline
                      ),)
                    ],
                  )
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}
