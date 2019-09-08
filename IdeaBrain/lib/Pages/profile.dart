import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
class Profilepage extends StatefulWidget {
  @override
  _ProfilepageState createState() => _ProfilepageState();
}

class _ProfilepageState extends State<Profilepage> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:ClipPath(
        child:Stack(
          fit: StackFit.expand,
          children: <Widget>[
            Container(
              decoration: BoxDecoration(
                color: new Color(0xffc6ff00),
                gradient: LinearGradient(
                  colors:[new Color(0xffea35db),new Color(0xff753fe4)],
                  begin: Alignment.centerRight
                )
              ),
            ),
            Column(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(top:50.0),
                  child: CircleAvatar(
                    backgroundColor: Colors.white,
                    radius: 90.0,
                    child:Image.asset('images/ic_launcher.png'),
                  ),
                ),
                 Padding(
                 padding: const EdgeInsets.all(8.0),
                   child:Text(
                     'Kalana',
                     style: TextStyle(
                       color: Colors.white,
                       fontSize: 24.0,
                     ),
                   ) ,
                 ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child:Text(
                    'City',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20.0,
                    ),
                  ) ,
                )
              ],
            )
          ],
        ),
        clipper: HeaderColor(),
      )
    );
  }
}

class HeaderColor extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
     var path=new Path();
     path.lineTo(0.0, size.height-280);
     path.lineTo(size.width, size.height-380);
     path.lineTo(size.width, 0.0);
     path.close();
     return path;
  }
  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) =>false;
}