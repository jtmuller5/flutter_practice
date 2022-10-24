import 'package:flutter/material.dart';

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
        title: Text("Flossy up to 50% off"),
        automaticallyImplyLeading: true,
      ),
      body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("15-50% off all procedures!") ),
          
        ],
      ),
      drawer: Drawer(
        backgroundColor: Colors.white,
        child: ListView(
          padding: EdgeInsets.all(28.0),
          children: [
            ListTile(
              title: Text('Dental Care'),
              subtitle: Text("Cleaning, X-rays, Root Canals, and more!"),
              leading: Icon(Icons.access_alarms),
            ),
            ListTile(title: Text("Book an appointment"), subtitle: Text("Call us! 305-555-5555"),
            leading: Icon(Icons.phone),
            ),
            ListTile(title: Text('Email Us'),
            subtitle: Text("Flossy@contact.com"),
            leading: Icon(Icons.email),
            ),
            ListTile(title: Text('Our website'),
            textColor: Colors.deepOrange,
            subtitle: Text('www.flossy.com'),
            ),
          ],
        ),
      ),
    );
  }
}
