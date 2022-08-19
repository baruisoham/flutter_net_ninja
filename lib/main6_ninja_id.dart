import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: NinjaCard(),
  ));
}

// When we need to take inputs and generate outputs based on that. 
// We have to use StatefulWidget
// write stful in vscode and you will get template.
// When we call StatelessWidget only one class is made.
// When we call StatelessWidget two classes are made by template.
// NinjaCard & _NinjaCardState -> the two classes
// NinjaCard is the main class - this class calls _NinjaCardState class.
// _NinjaCardState class has all details, just like stateless has.

class NinjaCard extends StatefulWidget {
  @override
  State<NinjaCard> createState() => _NinjaCardState();
}

class _NinjaCardState extends State<NinjaCard> {
  @override
  int level = 1;                  // we initiate level value as 1

  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[
          900], // giving background color to scaffold gives background color to the entire app
      appBar: AppBar(
        title: Text("Ninja ID Card"),
        centerTitle: true,
        backgroundColor: Colors.grey[
            850], // appBar is given a lighter shade of grey to make a contrast b/w appBar and entire scaffold.
        elevation:
            0, // appBar has a shadow below it by default(elevation effect), this is because of elevation property, we dont want elevation
      ),

      body: Padding(
        padding: const EdgeInsets.fromLTRB(30, 40, 30,
            0), // whole column is padded to give some space between edge of screen and entire content
        child: Column(
          crossAxisAlignment: CrossAxisAlignment
              .start, // crossaxisalignment is given for entire column to start from the left end, by default they start from middle.
          children: [
            Center(
              // center widget is used on this widget because we want only this widget to be at center, unlike rest of the widgets which we want at left side.
              child: CircleAvatar(
                backgroundImage: AssetImage("assets/soham.png"),
                radius: 60,
              ),
            ),

            Divider(
              height: 60,
              color: Colors.grey[800],
            ),

            Text(
              "NAME",
              style: TextStyle(
                // to change anything about text, we have to use TextStyle() widget
                color: Colors.grey[400],
                letterSpacing: 2,
              ),
            ),

            SizedBox(height: 10), // SizedBox widget is used to add space.

// // Divider - adds space and draws a line as well (signifying section division)
// // SizedBox - adds space only (used whenever we just need spacing)

            Text(
              "Soham Barui",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            Text(
              "AGE",
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "19",
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            Text(
              "LEVEL",
              style: TextStyle(
                color: Colors.grey[400],
                letterSpacing: 2,
              ),
            ),

            SizedBox(height: 10),

            Text(
              "$level",           // to display a variable in Text() widget, we use "$variable"
              style: TextStyle(
                color: Colors.amber,
                fontSize: 28,
                fontWeight: FontWeight.bold,
              ),
            ),

            SizedBox(height: 30),

            Row(
              children: [
                Icon(
                  Icons.mail,
                  color: Colors.grey[400],
                ),
                SizedBox(width: 10),
                Text(
                  "soham.barui1234@gmail.com",
                  style: TextStyle(
                    color: Colors.grey[400],
                  ),
                ),
              ],
            )
          ],
        ),
      ),

      floatingActionButton: FloatingActionButton(onPressed: () {  // when button is pressed, we want the following to happen.
        setState(() {      // When command inside setState() changes -> the state changes -> causes the app to rebuild. Thus, displaying the changes.
          level++;         // if we put the command directly, without putting it inside setState(), the level variable will change, but it will not display as the state did not change.
        });                // to make sure that whenever variable changes the app should show change, we should put the command inside setState().
      },
        child: Icon(
            Icons.add
          ),
      ),
    );
  }
}
