import 'package:flutter/material.dart';

class Dashboard extends StatefulWidget {
  const Dashboard({super.key});

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Image.network("https://mobile.miami.edu/_assets/images/images/homepage/umiamiAppIcon.png", width: 400,),
        Padding(padding: EdgeInsets.all(30),
      child: Text("Welcome to the MyUM App! Here you can explore the recent news and happenings going on around the campus, if you have any questions or suggestions use the contact field on the final page.",style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),),),
              Text("University of Miami", style: TextStyle(
              color: Colors.deepOrange,
              fontSize: 20)),
      ],
    );
  }
}