import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  String img =
      'https://img.freepik.com/free-vector/reminders-concept-illustration_114360-4278.jpg?w=1380&t=st=1666086522~exp=1666087122~hmac=7aa0fcccaff8e31e72548f733d95155280faea2059e87ecbe6b0ffccc9635c3c';
  List clr = [
    Colors.yellow,
    Colors.pink,
    Colors.blue,
  ];
  List txt = [
    'YELLOW',
    'PINK',
    'BLUE',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Icon(
          Icons.menu,
          color: Colors.black,
        ),
        actions: [
          TextButton(
            onPressed: () {},
            child: Text(
              'English',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: ListView(
          shrinkWrap: true,
          padding: EdgeInsets.symmetric(horizontal: 20),
          children: [
            ListTile(
              leading: CircleAvatar(
                child: Icon(
                  Icons.catching_pokemon,
                ),
              ),
              title: Text("Afdale_R'J"),
              subtitle: Row(
                children: [
                  Icon(Icons.location_on),
                  Text('UnPam4lyf'),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                "A'yo WazzuP !",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 30.0),
              child: Text(
                'Todays Exercises',
                style: TextStyle(
                  fontSize: 25,
                ),
              ),
            ),
            Container(
              height: 240,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: const [
                  BoxShadow(
                    color: Colors.grey,
                    spreadRadius: .2,
                    blurRadius: 50, // changes position of shadow
                  ),
                ],
              ),
              child: Stack(
                children: [
                  Positioned(
                    right: 0,
                    child: SizedBox(
                      height: 240,
                      child: Image.network(img),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text('Intermediate'),
                        Spacer(),
                        Text(
                          'Happy Meal',
                          style: TextStyle(
                            color: Colors.blue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Spacer(),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.only(top: 20),
              child: Text(
                'Do the excercises and discovered the knowledge',
                style: TextStyle(
                  color: Colors.red,
                  fontStyle: FontStyle.italic,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Text(
                'Your courses',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(
              height: 180,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                itemCount: 3,
                itemBuilder: (context, index) {
                  return Container(
                    height: 160,
                    width: 160,
                    margin: EdgeInsets.only(right: 10),
                    decoration: BoxDecoration(
                      color: clr[index],
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(txt[index]),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
