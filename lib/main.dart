import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          leading: Icon(Icons.menu),
          title: Text('Assignment_1'),
          actions: [
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Icon(Icons.search),
            )
          ],
        ),
        body: MyListView(),
      ),
    );
  }
}

class MyListView extends StatelessWidget {
  const MyListView({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = [
      Colors.teal[800],
      Colors.deepOrange[400],
      Colors.teal[800],
      Colors.deepOrange[400],
      Colors.teal[800],
      Colors.deepOrange[400],
      Colors.teal[800],
      Colors.deepOrange[400],
      Colors.teal[800],
      Colors.deepOrange[400],
    ];
    return ListView.builder(
        itemCount: 10,
        itemBuilder: (context, index){
          final color = colors[index % colors.length];
          return Padding(
            padding: EdgeInsets.all(12),
            child: Container(
              height: 200,
              decoration: BoxDecoration(
                  color: color,
                  borderRadius: BorderRadius.circular(15)
              ),
              child: Stack(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Text('Top Left', style: TextStyle(color: Colors.white, fontSize: 25),)
                    ),
                  ),
                  Align(
                      alignment: Alignment.center,
                      child: Text('Center', style: TextStyle(color: Colors.white, fontSize: 25))
                  ),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Align(
                        alignment: Alignment.bottomRight,
                        child: Text('Bottom Right', style: TextStyle(color: Colors.white, fontSize: 25))
                    ),
                  ),
                ],
              ),
            ),
          );
        }
    );
  }
}


