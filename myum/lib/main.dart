import 'package:flutter/material.dart';
import 'dashboard.dart';
import 'customcard.dart';
import 'contact.dart';


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

  //https://news.miami.edu/_assets/images-stories/2025/02/arsenic-sargassum-hero-940x529.jpg

  //“But despite its potential agricultural benefits, the presence of heavy metals, particularly arsenic, in sargassum raises serious health and environmental concerns,” she said. “Sargassum has been found to bioaccumulate arsenic from marine environments, with variations in concentration influenced by natural oceanic processes and anthropogenic pollution. So, using it as a fertilizer introduces the possibility of arsenic transfer to crops, and that threatens food safety and human health."

  //class collections of daa
  var img = [
    "https://news.miami.edu/_assets/images-stories/2025/03/st-patricks-day-hero-790x527.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/dust-ingestion-hero-790x527.jpg",
    "https://news.miami.edu/life/_assets/images/images-stories/2019/04/camps-790.jpg",
    "https://news.miami.edu/frost/_assets/images/images-stories/2025/03/musichome940x529.png",
    "https://news.miami.edu/_assets/images-stories/2025/03/thomas-salerno-hero-940x529.jpg",
    "https://news.miami.edu/_assets/images-stories/2025/03/field-hockey-video-hero-790x527.jpg",
    "https://localist-images.azureedge.net/photos/48799169941087/card@2x/69cd669d70a58db794558d1c93aae51b1ff4303a.jpg",
    "https://localist-images.azureedge.net/photos/48312975788011/card/45dea137533e2239f273ffc9eb3306ef928c1af4.jpg",
    "https://localist-images.azureedge.net/photos/48356600129058/card@2x/b1cdb15ced03099a0035ff061bf9aa5e4b736ba4.jpg",
    "https://localist-images.azureedge.net/photos/48746851023197/card/546bb8968b32bb24ff5ba2f53298cd5792e080ce.jpg",
    "https://localist-images.azureedge.net/photos/47215719173435/card/0869a3a86322849fc42d64c66435859c9b210378.jpg",
    "https://localist-images.azureedge.net/photos/46057603043157/card/6f0524a4daa3bfe124ab29fbf39f1905dd2321ee.jpg",

  ];
  var titles = [
    "St. Patrick's Day",
    "Exposing the DIRT on dust",
    "Find summer camp opportunities for your child",
    "Bringing his music back home",
    "Faculty excellence commended",
    "A winning forumla",
    "Building a Fulfilling Retirement",
    "Master of International Business Information Session",
    "HOPE Connects on the Bricks",
    "Palm Beach County ’Canes | Centennial Birthday Celebration",
    "GRADUATE CONDUCTORS SHOWCASE | FROST REPERTORY ORCHESTRA",
    "Bee Keeping 101",
  ];
  var summary = [
    "A University of Miami professor who specializes in Irish culture traces the roots of the popular holiday to Irish émigrés who fled the “Great Hunger” in their homeland to seek a new start in America.",
    "In one of the few studies of its kind, a University of Miami doctoral student and others have documented the particle size of household dust found on children’s hands after play activities.",
    "With your child’s interests and academic goals in mind, explore a list of summer camps and programs at the University this summer.",
    "Multi-talented musician Justin Kinchen took the extraordinary skills he’s developed at the Frost School to a concert in his hometown of Indianapolis that showcased his original jazz and classical compositions and paid tribute to his childhood mentors.",
    "Dedicated to his students and the University, Dr. Tomás A. Salerno, professor of surgery in the Cardiovascular Division, is honored with the 2024–25 James W. McLamore Outstanding Service Award by the Faculty Senate.",
    "More than just a team, the University of Miami's Field Hockey Club fosters camaraderie and teamwork through travel, competition, and a shared passion.",
    "HR is offering a retirement planning and financial well-being learning series. This series is designed to empower faculty and staff with valuable insights, tips and strategies related to retirement planning. Whether you’re approaching retirement soon or just starting to consider your options, you will obtain tools and knowledge needed to confidently navigate the journey.",
    "Interested in knowing what sets Miami Herbert Master in International Business (MIB) Program apart, and how it will help you achieve your career goals while exploring Miami? Sign up for our info. session now! Dr. Chei Hwee Chua (Academic Director) and Daniela Moya (Asst. Director of Admissions) will inform you about our program offerings, experiential learning and enrichment opportunities, the application process, what the committee looks for in a candidate, scholarship opportunities, and answer your questions, etc.",
    "Join the HOPE Office to discuss advocacy opportunities or just to say hello every Thursday from 12:30 to 1:30 pm. See you soon!",
    "Celebrate 100 years of excellence with the Palm Beach County ’Canes! Join alumni, friends, and family of the University for a memorable evening as we commemorate our Centennial Birthday. This special gathering will honor the legacy, achievements, and future of our beloved institution. Don’t miss this opportunity to reconnect, reminisce, and toast to a century of impact.",
    "Frost Orchestral Studies graduate conductors present masterworks of orchestral literature.",
    "Ray Santamaria has been working in Facilities Management as Lead Technician for over 10 years.  He is also the proud owner of honeybee colonies certified by the Apiary Division of the Florida Dpt of Agriculture and Consumer Services. Come share Ray's passion, discover the world of bees, and learn the basics of bee keeping with the experts! Richter Library 1st floor - Flex Space B",

  ];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(scaffoldBackgroundColor: const Color.fromARGB(255, 232, 210, 233)),
      home: Scaffold(
        appBar: AppBar(
          toolbarHeight: 15,
          title: Text("MyUM", style: TextStyle(fontSize: 10),),
          backgroundColor: Colors.lightGreen,
        ),
        body: Center(
          child: <Widget>[
            Dashboard(),
            ListView(
              children: <Widget>[
                CustomCard(img[0], titles[0], summary[0]),
                CustomCard(img[1], titles[1], summary[1]),
                CustomCard(img[2], titles[2], summary[2]),
                CustomCard(img[3], titles[3], summary[3]),
                CustomCard(img[4], titles[4], summary[4]),
                CustomCard(img[5], titles[5], summary[5]),
              ],
            ),
            ListView(
             children: <Widget>[
                CustomCard(img[6], titles[6], summary[6]),
                CustomCard(img[7], titles[7], summary[7]),
                CustomCard(img[8], titles[8], summary[8]),
                CustomCard(img[9], titles[9], summary[9]),
                CustomCard(img[10], titles[10], summary[10]),
                CustomCard(img[11], titles[11], summary[11]),
              ],
            ),
            Contact(),
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
            NavigationDestination(icon: Icon(Icons.newspaper), label: "News"),
            NavigationDestination(icon: Icon(Icons.event), label: "Events"),
            NavigationDestination(
                icon: Icon(Icons.contact_page), label: "Contact"),
          ],
        ),
      ),
    );
  }
}