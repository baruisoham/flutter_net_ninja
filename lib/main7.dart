import 'package:flutter/material.dart';

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
  List<String> quotes = [         // we make a list which takes in string values, the list is named as quotes.
    "Bros before hoes",           // we call the list whenever we need the data
    "Your momma so fat she sat on an iPhone and made it iPad",
    "Joe Mama",
    "If you can't cum in her, cum on her"
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
        children: quotes.map((quote) => Text(quote)).toList(),
      ),
    );
  }
}

// children: quotes.map((quote) => Text(quote)).toList(),

// children property for row/column takes in lists, so we have to give it list.
// we could have written all quotes as text right there in the column. 
// but what happens when we have to put the same text again and again in different places
// we can write the text once, and then call it.
// listName.map() -> goes through every item in the list one by one and does the task specified
// the task specified here was to Text(Quote) ie, display the quote one by one.
// but children: property only takes list as its input. so we also do .toList() to convert all quotes displayed as a list.
