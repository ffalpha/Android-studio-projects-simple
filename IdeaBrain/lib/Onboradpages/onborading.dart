import 'package:flutter/material.dart';



class Onboardpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
        return PageView.builder(itemBuilder: (context,index){
          return Text('page $index');
        });
  }
}
