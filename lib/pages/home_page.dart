import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My flutter app"),
      ),
      body: Center(
        child: CircleContainer(
          child: SvgPicture.asset(
            "assets/icons/menu.svg",
            width: 40,
            height: 40,
            color: Colors.black,
          ),
          //Icon(
          //Icons.phone,   //icono del tipo material design
          //CupertinoIcons.phone,  //icono cupertino
          //size: 50,
          //color: Colors.blue,
          //),
          width: 100,
          height: 100,
          //style: TextStyle(fontSize: 40),
        ),
      ),
    );
  }
}
