import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);



  @override
  Widget build(BuildContext context) {

    double widthSize = MediaQuery.of(context).size.width;
    double heightSize = MediaQuery.of(context).size.height;

    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text("hello world"),));
          ScaffoldMessenger.of(context).showMaterialBanner(
              MaterialBanner(content: const Text("hi"), actions: [TextButton(onPressed: () {
                ScaffoldMessenger.of(context).hideCurrentMaterialBanner();
              }, child: Text("close"))]));
        },
      ),
      appBar: AppBar(
        title: Text("Title"),
        automaticallyImplyLeading: true,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,

        //THIS CALCULATES HEIGHT AND WIDTH OF SCREEN
        // children: [
        //    Center(child: Text("Width $widthSize",style: TextStyle(fontSize: 20),),),
        //   Text("Height $heightSize",style: TextStyle(fontSize: 20),
        //   ),
        //   if(widthSize > heightSize) Text("Landscape",style: TextStyle(fontSize: 20),),
        // ],

          ),
      drawer: Drawer(
        child: ListView(padding: EdgeInsets.all(28.0), children: [
          ListTile(title: Text("idea 1"), subtitle: Text("subtitle")),
          const ListTile(
            title: Text("idea 2"),
            leading: Icon(Icons.ac_unit),
          ),
          const ListTile(
            title: Text("idea 3"),
            trailing: Icon(Icons.ice_skating),
          ),
          Builder(builder: (context) {
            return ListTile(
              title: Text("idea 4"),
              tileColor: Colors.blue,
              onTap: () {
                Scaffold.of(context).closeDrawer();
              },
            );
          })
        ]),
      ),
    );
  }
}
