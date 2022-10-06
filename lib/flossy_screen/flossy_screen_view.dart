import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlossyScreenView extends StatelessWidget {
  const FlossyScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
            child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            LinearProgressIndicator(
              color: Colors.orange,
              value: 0.5,
              backgroundColor: Colors.orange.withOpacity(0.3),
              minHeight: 9.0,
            ),
            const Padding(
              padding: EdgeInsets.all(25.0),
              child: Text(
                "Flossy",
                style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                  fontSize: 35.0,
                ),
              ),
            ),
            SizedBox(height: 30.0),
            const Center(
              child: Text('What\'s the reason for your visit?'),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SameSizedBox(label:"Emergency", icon: Icons.emergency_outlined,),
                SizedBox(
                  width: 20.0,
                ),
                SameSizedBox(label:"Dentures/Implants",icon: Icons.heart_broken,),
              ],
            ),
          ],
        )),
      ),
    );
  }
}


class SameSizedBox extends StatelessWidget {
  const SameSizedBox({Key? key, required this.label, required this.icon}) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: Container(
        height: 130.0,
        decoration: BoxDecoration(
          border: Border.all(color: Colors.grey, width: 1.0),
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Padding(
          padding: EdgeInsets.all(30.0),
          child: Column(
            children: [
              Icon(icon),
              SizedBox(height: 10.0),
              SizedBox(
                width: 100.0,
                child: Text( textAlign: TextAlign.center,
                  label,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}