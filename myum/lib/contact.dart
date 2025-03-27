import 'package:flutter/material.dart';

class Contact extends StatefulWidget {
  const Contact({super.key});

  @override
  State<Contact> createState() => _ContactState();
}

class _ContactState extends State<Contact> {
  @override
  Widget build(BuildContext context) {
    return Column(
children: <Widget>[
        Padding(
          padding: EdgeInsets.all(16.0),
          child: TextField(
            maxLines: 10,
            expands: false,
            decoration: InputDecoration(
              hintText: "Any Suggestions or Questions?",
              contentPadding: EdgeInsets.symmetric(vertical: 70),
            ),
          ),
        ),
        ElevatedButton(
          onPressed: () {},  
          child: Text("Submit"), 
        ),
        Padding(padding: EdgeInsets.all(30),
      child: Text("Thank you for visiting our app!",style: TextStyle(fontWeight: FontWeight.bold,),),),
              Text("University of Miami", style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 20)),
      ],
    );
  }
}