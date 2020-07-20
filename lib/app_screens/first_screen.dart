import 'dart:math';

import 'package:flutter/material.dart';
class firestScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("Jayneel from first screen  ${getnum()}" );
  }
  int getnum(){
    var rand=Random();
    int luckynm=rand.nextInt(10);
    return luckynm;
  }
}