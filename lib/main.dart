import 'package:assignment4/checkboxWidget.dart';
import 'package:assignment4/dropdown.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:toggle_switch/toggle_switch.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
@override
_HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
            title: Text('Sort & Filter'),
            centerTitle: true,
            leading: Icon(Icons.cancel),
            backgroundColor: Colors.green[900],
            elevation: 5,
            shadowColor: Colors.grey[300],
            actions: [
              TextButton(
                child: Text(
                  "CLEAR",
                  style: TextStyle(
                    color: Colors.white,
                    ),
                ),
                onPressed: () {},
              ),
              TextButton(
                child: Text(
                  "APPLY",
                  style: TextStyle(
                    color: Colors.white,
                    ),
                ),
                onPressed: () {},
              ),
            ],
          ),

          body: CustomScrollView(
            slivers: [
              SliverFillRemaining(
                hasScrollBody: false,              
                child: Column(
                  children: [

                    // Dropdown widget (sort by)
                    CustomDropDown(text: 'Sort by', listItem: [ "Newest first", "Oldest first", "Value High-Low", "Value Low-High"],),
                    
                  // Toggle widget (money in, money out)
                    Container(
                      height: 200,
                      width: 500,
                      margin: EdgeInsets.all(15),
                      decoration: BoxDecoration(
                        color: Colors.green[100],
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        children: [
                          Text(
                            'Transaction types',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              height: 5
                              ),
                            ),
                            ToggleSwitch(
                              labels: [
                                'Money In',
                                'Money Out'
                              ],
                              fontSize: 14,
                              minWidth: 100,
                              minHeight: 50,
                              cornerRadius: 10,
                              activeBgColors: [
                                Colors.green[900],
                                Colors.green[900],
                              ],
                              activeFgColor: Colors.white,
                              inactiveFgColor: Colors.white,
                            )
                      ],
                    ),
                  ),
                  Expanded(
                      child: Container(
                        width: 500,
                        padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Column(
                          children: [                            
                            CustomCheckbox(text: 'Sale'),
                            CustomCheckbox(text: 'Credit'),
                            CustomCheckbox(text: 'Refund'),
                            CustomCheckbox(text: 'Loan'),
                            CustomCheckbox(text: 'Direct Material'),
                            CustomCheckbox(text: 'Direct Labour'),
                            CustomCheckbox(text: 'Asset'),
                            CustomCheckbox(text: 'Other'),
                            CustomCheckbox(text: 'Overhead'),
                          ],
                        )
                    ) 
                  ),
                  
                  // Toggle widget (good, ok, bad)
                  Container(
                    height: 200,
                    width: 500,
                    margin: EdgeInsets.all(15),
                    decoration: BoxDecoration(
                      color: Colors.green[100],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Column(
                      children: [
                          Text(
                            'Transaction health',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              height: 5
                              ),
                            ),
                            ToggleSwitch(
                              labels: [
                                'Good',
                                'Ok',
                                'Bad'
                              ],
                              icons: [
                                FontAwesomeIcons.thumbsUp,
                                FontAwesomeIcons.thumbsDown,
                                FontAwesomeIcons.thumbsDown,
                              ],
                              fontSize: 14,
                              minWidth: 100,
                              minHeight: 50,
                              cornerRadius: 10,
                              activeBgColors: [
                                Colors.green[900],
                                Colors.green[900],
                                Colors.green[900],
                              ],
                              activeFgColor: Colors.white,
                              inactiveFgColor: Colors.white, 
                            )
                    ],
                  ),
                ),
                  
                Container(
                  width: 500,
                  padding: const EdgeInsets.only(left: 50.0, right: 50.0),
                  margin: EdgeInsets.all(15),
                  decoration: BoxDecoration(
                    color: Colors.green[100],
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: [
                      CustomCheckbox(text: 'Consultant Notes Only'),
                      Divider( color: Colors.grey),
                      CustomCheckbox(text: 'Overdue only'),
                      Divider( color: Colors.grey),
                      CustomCheckbox(text: 'Date range'),
                    ],
                  )
              ), 
                 
              Row(
                children: [
                  Expanded(
                    child: CustomDropDown(text: 'From', listItem: ['14-02-20', '12-04-21']),
                    ),
                    Expanded(
                      child:
                      Container(
                        height: 100,
                        padding: const EdgeInsets.only(left: 50.0, right: 50.0, top: 20.0),
                        margin: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.green[100],
                          borderRadius: BorderRadius.circular(10),
                        ), 
                        child: TextField(
                        obscureText: true,
                        decoration: InputDecoration(
                          labelText: 'To',
                        ),
                      ),
                      ) 
                      ),
                  ]
                ),
              ]
            ),
          )
        ],
      ),    
      backgroundColor: Colors.grey[100],
    );
  }
}
