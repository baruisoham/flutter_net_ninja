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
          child: Text(          // we wanted to put the text in center, but we could not just put Center(Text("Hello people!!")). We cannot put widget inside a widget directly. 
            "Hello people!!",   // We have to define property inside widget before we add another widget. If we want to nest a widget inside a widget directly, use child: property. So here we use Center(child:(Text("Hello"),))
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Colors.grey[600],
              letterSpacing: 2,
              fontFamily: 'BruhFamily',   // We took a font from google fonts, downloaded it, added it to the fonts folder and in pubspec.yaml we added its location and then called it.
            ),
          ),

        ),

          floatingActionButton: FloatingActionButton( 
            onPressed: null,          // nothing to do when pressed
            child: Text("Press"),     // Text inside the button
            backgroundColor: Colors.red[600],
          ),   
      );
    }
  }
