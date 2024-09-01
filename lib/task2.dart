import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'models/contact.dart';

class Task extends StatelessWidget {
  Task({super.key});
List<Contact>allContact=[
  Contact(name: "nossiba", major: "IT", phone: "7147876544"),
  Contact(name: "aish", major: "IT", phone: "7145789908"),
  Contact(name: "hanen", major: "CS", phone: "777654323"),
  Contact(name: "maha", major: "CS", phone: "777744268")


];

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body:
      Container(
          margin: EdgeInsets.symmetric(vertical: 10),
      height: 70,
      color: Colors.purple,
      child:Column(
        children: allContact.map((x) => buildContact(context, x)).toList(),



    )
      )
    );
  }

}
Widget buildContact(BuildContext con,Contact c){



  return Container(
      color: Colors.white,
      child:Row(
        children: [
          Container(
            padding: EdgeInsets.all(10),
            height: 60,
            color: Colors.red,
            width: (MediaQuery.of(con).size.width*(2/3)-10),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(c.name),
                Text(c.major),
                Text(c.phone),
              ],

            ),

          ),
          Container(
            height: 70,
            color: Colors.grey,
            padding: EdgeInsets.symmetric(horizontal: 5),
           // width:(MediaQuery.of(con).size.width*(2/3))-4,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Icon(Icons.phone),
                Icon(Icons.sms),
                Icon(Icons.call),
              ],
            ),
width:(MediaQuery.of(con).size.width*1/3),
          )
        ],
      )


    // margin: EdgeInsets.only(left: 0.0,top: 10.0,right: 0.0,bottom: 0.0),


  );

}