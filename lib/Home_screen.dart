import 'package:contact/contact_item.dart';
import 'package:contact/style.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName = "home-screen";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController phonecontroller = TextEditingController();
  ContactItem contactItem1 = ContactItem();
  ContactItem contactItem2 = ContactItem();
  ContactItem contactItem3 = ContactItem();
  int num = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        centerTitle: true,
        title: const Text(
          "Contact Screen",
          style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: SingleChildScrollView(
          child: Column(
            children: [
              StyleHandlling("Enter Your Name Here",
                  Icons.drive_file_rename_outline, namecontroller),
              const SizedBox(
                height: 30,
              ),
              StyleHandlling(
                  "Enter Your Phone Number ", Icons.call, phonecontroller),
              const SizedBox(
                height: 30,
              ),
              Row(
                children: [
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        additem();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Text(
                        "Add",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {
                        deleteitem();
                      },
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          padding: EdgeInsets.symmetric(vertical: 20),
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(30))),
                      child: const Text(
                        "Delete",
                        style: TextStyle(color: Colors.black, fontSize: 20),
                      ),
                    ),
                  ),
                ],
              ),
              contactItem1,
              contactItem2,
              contactItem3,
            ],
          ),
        ),
      ),
    );
  }

  void additem() {
    if (num == 0) {
      contactItem1 = ContactItem(
          isVisible: true,
          name: namecontroller.text,
          pNumber: namecontroller.text);
      num++;
      setState(() {});
    } else if (num == 1) {
      contactItem2 = ContactItem(
          isVisible: true,
          name: namecontroller.text,
          pNumber: namecontroller.text);
      num++;
      setState(() {});
    } else if (num == 2) {
      contactItem3 = ContactItem(
          isVisible: true,
          name: namecontroller.text,
          pNumber: namecontroller.text);
      num++;
      setState(() {});
    }
  }

  void deleteitem() {
    if (num == 1) {
      contactItem1 = ContactItem(
        isVisible: false,
      );
      num--;
      setState(() {});
    } else if (num == 2) {
      contactItem2 = ContactItem(
        isVisible: false,
      );
      num--;
      setState(() {});
    } else if (num == 3) {
      contactItem3 = ContactItem(
        isVisible: false,
      );
      num--;
      setState(() {});
    }
  }
}
