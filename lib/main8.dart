import 'package:flutter/material.dart';
import 'nameAndAge.dart'; // file with a class has been imported to use here

void main() {
  runApp(MaterialApp(
    home: Home(),
  ));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override

  // We made a class caled Detail in nameAndAge.dart file, we imported that already
  // we will now use it.

  List<Detail> details = [
    // we are making a list using the Detail class, the list made is called as details.
    Detail(
        name: "Soham",
        age:
            19), // we made a constructor in the other file to take input, so here we are taking input for the list items
    Detail(name: "Pavan", age: 20),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome quotes"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: details.map((detail) => Text("${detail.name}")).toList(),
      ),
    );
  }
}

// children: details.map((detail) => Text(detail)).toList(),     // details is the name of the list, detail is the name of list items

// children property for row/column takes in lists, so we have to give it list.
// we could have written all quotes as text right there in the column.
// but what happens when we have to put the same text again and again in different places
// we can write the text once, and then call it.
// listName.map() -> goes through every item in the list one by one and does the task specified

// every item in the list is named as a detail, we can name it anything if we want.
// the task specified here was to Text("${detail.name}"") ie, display the name property of detail list items one by one.
// but children: property only takes list as its input. so we also do .toList() to convert all quotes displayed as a list.

// to print variable -> Text("$variableName")
// but to print property of a class, Text("${listItemName.propertyname}")
