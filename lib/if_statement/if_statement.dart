import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IfStatement extends StatelessWidget {
   IfStatement({Key? key}) : super(key: key);

  var isLoggedIn = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
         if( !isLoggedIn)...
         [Text("bubble gum"),
          Text("jolly rancher"),],
          Text("popcorn"),
        ],
      ),
    );
  }
}
