import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_practice/flossy_screen/flossy_screen_viewmodel.dart';
import 'package:flutter_practice/more_details/more_details_view.dart';
import 'package:stacked/stacked.dart';

import 'flossy_screen_viewmodel.dart';

class FlossyScreenView extends StatelessWidget {
  const FlossyScreenView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<FlossyScreenViewModel>.reactive(
      viewModelBuilder: () => FlossyScreenViewModel(),
      onModelReady: (model) {
        // model.initialize();
      },
      builder: (context, model, child) {
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
                const Padding(
                  padding: EdgeInsets.all(10.0),
                  child: Center(
                    child: Text(
                      'What\'s the reason for your visit?',
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.bold,
                        fontSize: 22.0,
                      ),
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SameSizedBox(
                      label: "Emergency",
                      icon: Icons.emergency_outlined,
                    ),
                    SizedBox(
                      width: 20.0,
                    ),
                    SameSizedBox(
                      label: "Dentures/Implants",
                      icon: Icons.heart_broken,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: const [
                      SameSizedBox(label: "Cleaning", icon: Icons.emergency_outlined),
                      SizedBox(
                        width: 20.0,
                      ),
                      SameSizedBox(label: "Aligners", icon: Icons.heart_broken),
                    ],
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    SameSizedBox(label: "Tooth Pain", icon: Icons.emergency_outlined),
                    SizedBox(
                      width: 20.0,
                    ),
                    SameSizedBox(label: "Other/Checkup", icon: Icons.heart_broken),
                  ],
                ),
                SizedBox(
                  height: 30.0,
                ),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.of(context).push(MaterialPageRoute(builder: (context) => MoreDetailsView(),));
                    },
                    child: Text("Next"),
                    style: ButtonStyle(
                      minimumSize: MaterialStateProperty.resolveWith((states) => Size(180.0, 60.0)),
                        backgroundColor: MaterialStateProperty.resolveWith((states) => Colors.deepOrange),
                        shape: MaterialStateProperty.resolveWith(
                          (states) => RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6.0),
                          ),
                        )),
                  ),
                ),
              ],
            )),
          ),
        );
      },
    );
  }
}

class SameSizedBox extends ViewModelWidget<FlossyScreenViewModel> {
  const SameSizedBox({Key? key, required this.label, required this.icon}) : super(key: key);

  final String label;
  final IconData icon;

  @override
  Widget build(BuildContext context, FlossyScreenViewModel model) {
    return Flexible(
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: () {
          model.updateLabel(label);
        },
        child: Container(
          height: 130.0,
          decoration: BoxDecoration(
            border: Border.all(color: label == model.selectedLabel ? Colors.orange : Colors.grey, width: 1.0),
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
                  child: Text(
                    textAlign: TextAlign.center,
                    label,
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
