import 'package:flutter/material.dart';
import 'package:slider_screen/square.dart';

class HomePage extends StatefulWidget {
  //const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}
class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        // child: Text(
        //   'Hello',
        //   style: TextStyle(fontSize: 50),
        //   ),
        ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        type: BottomNavigationBarType.fixed,
        items: [
         BottomNavigationBarItem(icon: Icon(Icons.home),label:'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.message),label:'Message'),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label:'Settings'),
          BottomNavigationBarItem(icon: Icon(Icons.person),label:'Account'),
        ],
      ),
    );
  }
}
