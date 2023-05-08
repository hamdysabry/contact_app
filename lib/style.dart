import 'package:flutter/material.dart';

class StyleHandlling extends StatelessWidget {
  String text;
  IconData suffixicon;
  TextEditingController controller;

  StyleHandlling(this.text, this.suffixicon, this.controller);

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      decoration: InputDecoration(
          hintText: text,
          hintStyle: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          fillColor: Colors.white,
          filled: true,
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          suffixIcon: Icon(suffixicon)),
    );
  }
}
