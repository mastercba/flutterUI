import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My flutter app"),
      ),
      body: Center(
        child: Text(
          "Hello \n Developers",
          textAlign: TextAlign.center,
          style: TextStyle(
              //entramos a la clase TextStyle con Ctrl + click
              color: Colors.red[900],
              fontSize: 45,
              letterSpacing: 2,
              shadows: [
                //requiere que le pase una lista de shadows
                Shadow(
                    color: Colors.grey[400], //MAYUCULA EMPIEZA la Instancia
                    blurRadius: 3,
                    offset: Offset(5, 5))
              ],
              fontWeight: FontWeight.w300 //.w300   .bold
              ),
        ),
      ),
    );
  }
}
