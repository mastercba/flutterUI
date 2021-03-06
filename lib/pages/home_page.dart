import 'package:flutter/material.dart';
import '../widgets/avatar.dart';
import 'package:flutter_ui/widgets/bottom_menu.dart';
import '../widgets/circle_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      // bottomNavigationBar: BottomNavigationBar(
      //   items: [
      //     BottomNavigationBarItem(icon: Icon(Icons.home), title: Text("Home")),
      //     BottomNavigationBarItem(icon: Icon(Icons.list), title: Text("List")),
      //     BottomNavigationBarItem(
      //         icon: Icon(Icons.home), title: Text("Profile"))
      //   ],
      // ),
      bottomNavigationBar: BottomMenu(
        items: [
          BottomMenuItem(iconPath: 'assets/icons/home.svg', label: 'Inicio'),
          BottomMenuItem(iconPath: 'assets/icons/star.svg', label: 'Favoritos'),
          BottomMenuItem(iconPath: 'assets/icons/menu1.svg', label: 'Ofertas'),
          BottomMenuItem(iconPath: 'assets/icons/question.svg', label: 'About'),
        ],
      ),
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
              Avatar(),
              SizedBox(
                height: 40,
              ),
              Text("Bienvenido"),
              Text(
                "Marco Torrico",
                style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
/*               Container(
                height: 1,
                width: 100,
                margin: EdgeInsets.symmetric(vertical: 20),
                color: Color(0xffaaaaaa),
              ), */
/*               Row(
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
              ) */

              FlatButton(
                child: Text("UPLOAD"),
                onPressed: () => print("uploading..."),
              ),
              CupertinoButton(
                child: Text("UPLOAD"),
                color: Colors.blue,
                //???????minSize: 10,
                //padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                onPressed: () => print("uploading..."),
                //onPressed: null, //desactivado
              ),
            ],
          ),
        ),
      ),
    );
  }
}
