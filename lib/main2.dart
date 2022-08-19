import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(       // we are running the MaterialApp widget, it is like a wrapper that wraps everything in material theme.
    home: Home(),           // widgets have properties that we customize, home: is a property, it is used to customize homescreen. we customize homescreen by adding a new widget home().
  ));
}

  class Home extends StatelessWidget {      // stateless widget - state of widget CANNOT change over time. stateful widget - state of widget CAN change over time.

    @override                               // statelesswidget class already has a build function in it. @override tells to forget that buid function and use this one for the widget.
    Widget build(BuildContext context) {    // the build function takes a widget as a return value. It builds this widget again and again whenever something in the widget changes. Only the changed part is rebuilt automatically.
      return Scaffold(                      // We use the scaffold() widget which allows us to create appBar, navbar and stuff.
        
        appBar: AppBar(
          title: Text("My first App"), // after specifying every property, we have to put a comma (,) // You have to put text in Text() widget for it to show up in app.
          centerTitle: true,           //after every property we have to put a comma
          backgroundColor: Colors.red[600],
        ), 
          
        body: Center(           // we use the center widget to place the body in center
          child: Image.asset("assets/Minions.png"),   // we added the image in asset folder and added the location of the image here and in pubspec.yaml also. 
                                                      // When we want to use any asset that is locally stored, we have to add it in pubspec.yaml first and then call it
          // child: Image.network('https://variety.com/wp-content/uploads/2022/06/Minions-The-Rise-of-Gru.jpg?w=681&h=383&crop=1'),  if it is available on the internet and not locally stored, simply add the link here, no chages to pubspec.
        ),

        // Image.asset("location"), -> when image is locally stored
        // Image.network("location"), -> when image is stored on the internet

          floatingActionButton: FloatingActionButton( 
            onPressed: null,          // nothing to do when pressed
            child: Text("Press"),     // Text inside the button
            backgroundColor: Colors.red[600],
          ),   
      );
    }
  }
