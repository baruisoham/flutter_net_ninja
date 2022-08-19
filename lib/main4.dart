import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    
    home:
        Home(), 
  ));
}

class Home extends StatelessWidget {
    @override 
  Widget build(BuildContext context) {
    
    return Scaffold(

      appBar: AppBar(
        title: Text(
            "My first App"), 
        centerTitle: true, 
        backgroundColor: Colors.red[600],
      ),


// // We see below that containers take only a specific amount of space.
      // body: Row(
      //   children: [
      //     Container(
      //       Text("1"),
      //       color: Colors.amber,
      //       padding: EdgeInsets.all(30),
      //     ),
      //     Container(
      //       Text("1"),
      //       color: Colors.amber,
      //       padding: EdgeInsets.all(30),
      //     ),
      //     Container(
      //       Text("1"),
      //       color: Colors.amber,
      //       padding: EdgeInsets.all(30),
      //     ),
      //   ],
      // ),

// to customize a widget without typing much, you can click on the widget. 
// you will get a bulb symbol next to it.
// click on that, you will get option to add padding to the widget. You can also wrap the selected widget in a new widget, like expanded()
// wrap the selected widget in a row/column. this makes editing easier, we wont have to fill the brackets and take care of the indentation.


// // What if we want the containers to take all the free space available in the row.
// // To make sure that containers take all the space available, we use Expanded() widget.

      body: Row(
        children: [
          
          Expanded(               // we wrap the container in expanded widget. 
            flex: 4,              
            child: Container(     // if we forgot to wrap container() with expanded widget. We dont have to go through the hassle again. Click on the container widget, click on the light bulb and choose wrap with widget. Then type Expanded. Container will be wrapped with Expanded widget automatically.
              child: Text("1"),
              color: Colors.amber,
              padding: EdgeInsets.all(30),
            ),
          ),
          
          Expanded(
            flex: 2,
            child: Container(
              child: Text("2"),
              color: Colors.blue,
              padding: EdgeInsets.all(30),
            ),
          ),
          
          Expanded(
            flex: 4,
            child: Container(
              child: Image.asset("assets/Minions.png"),
            ),
          ),
        ],
      ),
      
    // // flex is used to mention proportion of expansion
    // // flex: 2 -> says 2 parts of the row will be taken up by that container

    );
  }
}

// to customize a widget without typing much, you can click on the widget. 
// you will get a bulb symbol next to it.
// click on that, you wll get option to add padding to the widget. wrap the selected widget in a new widget
// wrap the selected widget in a row/ column. this makes editing easier, we wont have to fill the brackets and take care of the indentation.
