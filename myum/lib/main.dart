import 'package:flutter/material.dart';

void main() {
  runApp(const MyUmApp());
}

class MyUmApp extends StatefulWidget {
  const MyUmApp({super.key});

  @override
  State<MyUmApp> createState() => _MyUmAppState();
}

class _MyUmAppState extends State<MyUmApp> {
  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("MyUM"),
          backgroundColor: Colors.deepOrange,
        ),
        body: Center(
          child: <Widget>[
            Text("Dashboard Page"),
            Text("Page $currentIndex"),
            Text("Page $currentIndex"),
            Text("Page $currentIndex"),
          ][currentIndex],
        ),
        bottomNavigationBar: NavigationBar(
          onDestinationSelected: (int index) {
            setState(() {
              currentIndex = index;
            });
          },
          destinations: const <Widget>[
            NavigationDestination(
                icon: Icon(Icons.dashboard), label: "Dashboard"),
            NavigationDestination(icon: Icon(Icons.pages), label: "Pages"),
            NavigationDestination(icon: Icon(Icons.home), label: "Home"),
            NavigationDestination(
                icon: Icon(Icons.airplane_ticket), label: "Tickets"),
          ],
        ),
      ),
    );
  }
}