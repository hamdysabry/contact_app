import 'package:flutter/material.dart';

class ContactItem extends StatelessWidget {
  bool isVisible;
  String name;
  String pNumber;

  ContactItem({this.isVisible = false, this.name = "", this.pNumber = ""});

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Container(
        padding: EdgeInsets.all(20),
        margin: EdgeInsets.symmetric(vertical: 18),
        width: double.infinity,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Name : $name ",
              style: TextStyle(fontSize: 20),
            ),
            Text(
              "Phone Number : $pNumber ",
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
