import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Category extends StatefulWidget {
  const Category({
    Key key,
    @required List<String> texts,
    @required List<bool> isChecked,
    this.title,
    this.container, this.borderTop = 2, this.borderBottom = 2,
  })  : _texts = texts,
        _isChecked = isChecked,
        super(key: key);

  final List<String> _texts;
  final List<bool> _isChecked;
  final String title;
  final Container container;
  final double borderTop;
  final double borderBottom;

  @override
  _CategoryState createState() => _CategoryState();
}

class _CategoryState extends State<Category> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16),
      padding: EdgeInsets.only(bottom: 16),
      decoration: BoxDecoration(
        // border: Border.all(color: Color(0xFFEFEFEF), width: 2),
        border: Border(
          left: BorderSide(color: Color(0xFFEFEFEF), width: 2),
          right: BorderSide(color: Color(0xFFEFEFEF), width: 2),
          top: BorderSide(color: Color(0xFFEFEFEF), width: widget.borderTop),
          bottom: BorderSide(color: Color(0xFFEFEFEF), width: widget.borderBottom),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              widget.title,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Divider(
            thickness: 1,
          ),
          ListView.builder(
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemCount: widget._texts.length,
            itemBuilder: (context, index) {
              return Container(
                height: 40,
                child: CheckboxListTile(
                  controlAffinity: ListTileControlAffinity.leading,
                  title: Text(widget._texts[index]),
                  value: widget._isChecked[index],
                  onChanged: (value) {
                    setState(() {
                      widget._isChecked[index] = value;
                    });
                  },
                ),
              );
            },
          ),
          Container(
            padding: EdgeInsets.all(16),
            child: widget.container,
          ),
        ],
      ),
    );
  }
}
