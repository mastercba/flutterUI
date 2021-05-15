import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CircleContainer extends StatelessWidget {
  final Widget child;
  final double width, height;

  //const CircleContainer({Key key, this.child}) : super(key: key);
  //or
  CircleContainer(
      {@required this.child, @required this.height, @required this.width})
      : assert(child != null), //validaciones..
        assert(width != null && width >= 50),
        assert(height != null && height >= 50);
  //@required nos dice que this.child es obligatorio
  //lanzamos una excepcion en caso de que this.child sea nulo!.....
  // para eso usamos un assert!

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width, //double.infinity, //todo el ancho posible
      height: this.height, //0.5, //como linea division
      alignment: Alignment.center,
      //child: Text("Hi"), //para centrar Hi o tb
      child: Center(
        child: this.child,
      ),
      //color: Colors.red[900], //tiene que estar dentro BoxDecoration
      decoration: BoxDecoration(
          color: Color(0xfff0f0f0),
          //borderRadius: BorderRadius.circular(20),
          shape: BoxShape.circle,
          boxShadow: [
            BoxShadow(
                color: Colors.black26, blurRadius: 10, offset: Offset(5, 5)),
            //BoxShadow(
            //    color: Colors.red.withOpacity(0.5),
            //    blurRadius: 20,
            //    offset: Offset(10, 10))
          ]),
    );
  }
}
