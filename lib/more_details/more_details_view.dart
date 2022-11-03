import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MoreDetailsView extends StatelessWidget {
  MoreDetailsView({Key? key}) : super(key: key);
  TextEditingController firstNameController = TextEditingController(text: "");
  TextEditingController lastNameController = TextEditingController(text: "");
  TextEditingController emailController = TextEditingController(text: "");

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text('Width: ' + MediaQuery.of(context).size.width.toStringAsFixed(2)),
              Text('Height: ' + MediaQuery.of(context).size.height.toStringAsFixed(2)),
            ],
          )/* Column(
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
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 48,
                  vertical: 8,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Full Name",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4.0),
                      child: Column(
                        children: [
                          TextField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Full Name",
                              isDense: true,
                            ),
                            controller: firstNameController,
                          ),
                          const SizedBox(
                            height: 30.0,
                          ),
                          TextFormField(
                            decoration: const InputDecoration(
                              border: OutlineInputBorder(),
                              hintText: "Last Name",
                            ),
                            controller: lastNameController,
                          )
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                    const Text(
                      "Email",
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                    ),
                    const SizedBox(
                      height: 10.0,
                    ),
                    TextFormField(
                      decoration: const InputDecoration(
                        border: OutlineInputBorder(),
                      ),
                      controller: emailController,
                    ),
                    const SizedBox(
                      height: 100,
                    ),
                    Center(
                      child: ElevatedButton(
                        style: ButtonStyle(
                          shape: MaterialStateProperty.resolveWith(
                            (states) => RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(16),
                            ),
                          ),
                          backgroundColor: MaterialStateColor.resolveWith((states) => Colors.deepOrange),
                        ),
                        onPressed: () {
                          print("First Name:${firstNameController.text}, \nLast Name: ${lastNameController.text},\nEmail: ${emailController.text}");
                        },
                        child: const Text(
                          "Show me dentists",
                          style: TextStyle(
                            fontSize: 20.0,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),*/
        ),
      ),
    );
  }
}
