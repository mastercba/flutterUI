import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My flutter app"),
      ),
      body: Center(
        child: CircleContainer(
          child: Text("Hola"),
          width: 100,
          height: 100,
          //style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
