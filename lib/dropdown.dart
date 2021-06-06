import 'package:flutter/material.dart';

class CustomDropDown extends StatefulWidget {
  final String text;
  final List<String> listItem;
  CustomDropDown({@required this.text, @required List<String> this.listItem});

  @override
  _CustomDropDownState createState() => _CustomDropDownState();
}

class _CustomDropDownState extends State<CustomDropDown> {
  String _valueChoose;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
      margin: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: Colors.green[100],
        borderRadius: BorderRadius.circular(10),
      ), 
      child: Column(
        children: [
          Text(
            widget.text,
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              ),
            ),
          DropdownButton(
            hint: Text("Select"),
            isExpanded: true,
            value: _valueChoose,
            items: widget.listItem.map((valueItem){
              return DropdownMenuItem(
              value: valueItem,
              child: Text(valueItem),
              );
            }).toList(),
            onChanged: (newVal){
                this.setState(() {                
                  _valueChoose = newVal;
                });
            },           
        ),
      ],
    ),
      
    );
  }
}
