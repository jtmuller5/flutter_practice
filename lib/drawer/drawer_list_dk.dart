import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class DrawerListDk extends StatelessWidget {
  const DrawerListDk({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
      ),
      appBar: AppBar(
        backgroundColor: Colors.deepOrange,
        title: const Text("Flossy up to 50% off"),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: const [
          Text("15-50% off all procedures!",textAlign: TextAlign.center,),
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 28, horizontal: 8),
          child: Column(
            children: [
              const DrawerHeader(
                  padding: EdgeInsets.zero,
                  child: ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Colors.deepOrange,
                      foregroundImage: NetworkImage(
                          "https://toppng.com/uploads/preview/bob-esponja-spongebob-squarepants-11563050820zdjpzlmyb1.png"),
                    ),
                    title: Text("Welcome to Flossy!"),
                    subtitle: Text("danielle@gmail.com"),
                  )),
              const ListTile(
                title: Text('Dental Care'),
                subtitle: Text("Cleaning, X-rays, Root Canals, and more!"),
                leading: Icon(Icons.access_alarms),
              ),
              const ListTile(
                title: Text("Book an appointment"),
                subtitle: Text("Call us! 305-555-5555"),
                leading: Icon(Icons.phone),
              ),
              const Spacer(),
              ListTile(
                title: const Text('Our website'),
                textColor: Colors.deepOrange,
                subtitle: Text.rich(
                  TextSpan(
                    text: "www.flossy.com",
                    style: const TextStyle(decoration: TextDecoration.underline),
                    recognizer: TapGestureRecognizer()
                      ..onTap = () {
                        launchUrl(Uri.parse("https://www.flossy.com"));
                      },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
