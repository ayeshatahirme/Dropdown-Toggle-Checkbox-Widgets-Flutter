import 'package:flutter/material.dart';

class CustomCheckbox extends StatefulWidget {
  final String text;
  
  CustomCheckbox({@required this.text});

  @override
  _CustomCheckboxState createState() => _CustomCheckboxState();
}

class _CustomCheckboxState extends State<CustomCheckbox> {
  bool _checked = false;
  @override
  Widget build(BuildContext context) {
    var text;
    return Container(
      child: Column(
        children: [
            CheckboxListTile(
              value: _checked,
              onChanged: (value) {
                this.setState(() {
                  _checked = value;
                });
              },
              title: Text(
                widget.text,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.black,
                  ),
                ),
              ),
            ],
          ),
    );
  }
}
