import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../widgets/circle_container.dart';

class Avatar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200,
      height: 200,
      //color: Color(0xffeeeeee),
      child: Stack(
        children: <Widget>[
          //SvgPicture.network(
          //    'https://image.flaticon.com/icons/svg/1177/1177568.svg'),
          SvgPicture.asset('assets/icons/user.svg'),

//          Container(
//            color: Colors.red,
//            width: 100,
//            height: 100,
//          ),
//          Container(
//            color: Colors.blue,
//            width: 80,
//            height: 80,
//          ),
          Positioned(
            child: CircleContainer(
              child: Icon(Icons.edit),
              width: 60,
              height: 60,
            ),

//            child: Container(
//              child: Icon(Icons.edit),
//              //color: Color(0xffcccccc),
//              width: 60,
//              height: 60,
//              decoration: BoxDecoration(
//                  color: Color(0xffcccccc), shape: BoxShape.circle),
            right: 0,
            top: 0,
          )
        ],
      ),
    );
  }
}
