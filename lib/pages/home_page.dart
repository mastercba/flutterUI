import 'package:flutter/material.dart';
import '../widgets/circle_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        top: true,
        bottom: true,
        child: Container(
          width: double.infinity, //tome mi container todo el ancho posible
          color: Colors.white,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.max,
            children: <Widget>[
              Text("Bienvenido"),
              Text(
                "Marco Torrico",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
              Container(
                height: 1,
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Color(0xffaaaaaa),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  CircleContainer(
                      child: Icon(Icons.add), height: 55, width: 55),
                  //Container(
                  //  width: 20,
                  //),
                  SizedBox(
                    width: 20,
                  ),
                  CircleContainer(
                      child: Icon(Icons.remove), height: 55, width: 55),
                  // Container(
                  //   width: 100,
                  //   height: 100,
                  //   color: Colors.red,
                  // ),
                  // Container(
                  //   width: 120,
                  //   height: 120,
                  //   color: Colors.blue,
                  // ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
