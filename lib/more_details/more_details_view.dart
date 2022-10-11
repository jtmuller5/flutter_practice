import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreDetailsView extends StatelessWidget {
  const MoreDetailsView({Key? key}) : super(key: key);

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
          Padding(
            padding: const EdgeInsets.all(25.0),
            child: Text("Flossy", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold)),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.all(25.0),
            child: Text(
              "Just a few more details...",
              style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),
            ),
          ),
          const SizedBox(
            height: 30.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Text(
                "Full Name",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(height: 10.0,),
              Column(
                children: [
                  TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      isDense: true,
                    ),
                  ),
                  SizedBox(height: 30.0,),
                  TextFormField(
                    decoration:InputDecoration(
                      border: OutlineInputBorder(),

                    ) ,
                  )
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              const Text(
                "Email",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
              ),
              SizedBox(height: 10.0,),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                ),
              ),
              SizedBox(height: 100,),
              Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children:  const [
                        Padding(
                          padding: EdgeInsets.all(20.0),
                          child: Text("Show me dentists"),
                        ),


                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    )));
  }
}
