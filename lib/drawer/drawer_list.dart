import 'package:flutter/material.dart';

class DrawerList extends StatelessWidget {
  const DrawerList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
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
