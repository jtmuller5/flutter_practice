import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String? title;
  final String hint;
  final ValueChanged<String> onChanged;
  final String? error;

  const MyTextField({Key? key, this.title, required this.hint, required this.onChanged, this.error}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title ?? "", style: const TextStyle(color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20)),
          TextFormField(
            decoration: InputDecoration(
                errorStyle: const TextStyle(color: Colors.red),
                errorText: error,
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                hintText: hint),
            onChanged: onChanged,
          ),
        ],
      ),
    );
  }
}
