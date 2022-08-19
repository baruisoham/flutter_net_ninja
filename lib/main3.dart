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

// Buttons and Icons

// comment and uncomment the sections one by one and see changes

// // Adding Icon only
//         body: Center(
//           child: Icon(               // to use icon, we have to create icon() widget 
//             Icons.airport_shuttle,   // inside icon() we specify the type of icon by icons.icon_name,
//             color: Colors.blue,
//             size: 50,
//           ),
//         ),

// // Adding Button with text
//       body: Center(
//           child: RaisedButton(
//             onPressed: () {
//               print("Button is clicked.");
//             }, // onPressed: says what to do when pressed, we add its task inside { }
//             child: Text("Click me"),
//             color: Colors.amber,
//       )),

// // Adding Button with icon and label
//           body: Center(
//             child: FlatButton.icon(    // if we want to put a button with icon & label, then use ButtonName.icon() widget
//               onPressed: () {},        //we've put nothing to happen when pressed
//               icon: Icon(
//                 Icons.mail
//               ), 
//               label: Text("Mail Me"),   // now the button has mail icon & label in it.
//               color: Colors.amber,
//               ),
//           ),

// // Making discord connect button, or insta. Contact buttons for social media.
// // Using icon as a button directly   
//               body: Center(
//                 child: IconButton(
//                   onPressed: () {}, 
//                   icon: Icon(
//                     Icons.discord
//                   )
//                 )
//               ),

// To use button, we use ButtonName() widget. 
// To specify icon, we use Icon() widget. 
// To make button with icon & label, we use ButtonName.icon() widget. Then we specify the icon using Icon() & label() widgets.
// To use icon as a button, we use IconButton() Widget and then specify the type of icon using Icon() widget.
// Whenever we want to use icon, we have to specify it using Icon( Icons.icon_name ) widget.

// // Containers
//       body: Container(      // We put widgets inside Container() if want to provide margin, coloring and padding to those widgets
//         child: Text("Hello there!!"),
//         color: Colors.grey,
//         padding: EdgeInsets.all(20),      // to give margin & padding, we have to use EdgeInsets.some_thing
//         margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),       
//       ),

      // padding -> spacing inside the box
      // margin -> spacing outside the box

      // EdgeInsets.all -> all sides same spacing
      // EdgeInsets.symmetric -> horizontal(left & right) have same, vertical(top & bottom) have same
      // EdgeInsets.fromLTRB -> specify all sides manually
      // Don't have to remember these, vscode autocomplete will always help.


// // Rows
//       body: Row(              // we use row when we want to put multiple widgets in the same row.
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,    
//         children: [           // in row and column, children: [] is used to add child widgets. So we don't have to write child: everytime as it assumes all the widgets in it are child.
//           RaisedButton(
//             onPressed: () {},
//             child: Text("Click Here"),
//             color: Colors.cyan,
//             ),
//           Text("This is just text"),
//           Container(
//             child: Text("This is a container"),
//             padding: EdgeInsets.all(30),
//             color: Colors.amber,
//           ),
//         ],

// MainAxisAlignment - is given to the row/column. For row - main axis is x axis. column - y axis
// when we say MainAxisAlignment.spaceEvenly - all children widgets are spaced evenly on main axis

      body: Row(              // we use row when we want to put multiple widgets in the same row.
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,  
        crossAxisAlignment: CrossAxisAlignment.end,  
        children: [           // in row and column, children: [] is used to add child widgets. So we don't have to write child: everytime as it assumes all the widgets in it are child.
          RaisedButton(
            onPressed: () {},
            child: Text("Click Here"),
            color: Colors.cyan,
            ),
          Text("This is just text"),
          Container(
            child: Text("This is a container"),
            padding: EdgeInsets.all(30),
            color: Colors.amber,
          ),
        ],
      ),

// Cross axis is opposite of main axis. if row - main = x, cross = y
// CrossAxisAlignment.end - puts the widgets at the end of y axis here. 
// The bottom of the row is also the end of y-axis for widgets because they can't go outside the borders of row

      

    );
  }
}

