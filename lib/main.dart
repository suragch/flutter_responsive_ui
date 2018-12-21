import 'package:flutter/material.dart';
//import 'dart:math';

void main() => runApp(MyApp());

// boilerplate code
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Flutter'),
        ),
        body: MyWidget(),
      ),
    );
  }
}

// widget class
class MyWidget extends StatefulWidget {
  @override
  _MyWidgetState createState() => _MyWidgetState();
}

// Button

// state class
// We will replace this class in each of the examples below
class _MyWidgetState extends State<MyWidget> {

  // state variable
  String _textString = 'Hello world';

  // The State class must include this method, which builds the widget
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          _textString,
          style: TextStyle(fontSize: 30),
        ),
        RaisedButton( //                         <--- Button
          child: Text('Button'),
          onPressed: () {
            _doSomething();
          },
        ),
      ],
    );
  }

  // this private method is run whenever the button is pressed
  void _doSomething() {
    // Using the callback State.setState() is the only way to get the build
    // method to rerun with the updated state value.
    setState(() {
      _textString = 'Hello Flutter';
    });
  }
}

// TextField


//class _MyWidgetState extends State<MyWidget> {
//
//  String _textString = 'Hello world';
//
//  @override
//  Widget build(BuildContext context) {
//    return Column(
//      children: [
//        Text(
//          _textString,
//          style: TextStyle(fontSize: 30),
//        ),
//        TextField( //                       <--- TextField
//          onChanged: (text) {
//            _doSomething(text);
//          },
//        )
//      ],
//    );
//  }
//
//  void _doSomething(String text) {
//    setState(() {
//      _textString = text;
//    });
//  }
//}

// Checkbox

//class _MyWidgetState extends State<MyWidget> {
//
//  bool _checkedValue = false;
//
//  @override
//  Widget build(BuildContext context) {
//    return CheckboxListTile(
//      title: Text('this is my title'),
//      value: _checkedValue,
//      onChanged: (newValue) {
//        _doSomething(newValue);
//      },
//      // setting the controlAffinity to leading makes the checkbox come
//      // before the title instead of after it
//      controlAffinity: ListTileControlAffinity.leading,
//    );
//  }
//
//  void _doSomething(bool isChecked) {
//    setState(() {
//      _checkedValue = isChecked;
//    });
//  }
//}

// AlertDialog

//class _MyWidgetState extends State<MyWidget> {
//
//  @override
//  Widget build(BuildContext context) {
//    return RaisedButton(
//      child: Text('Button'),
//      onPressed: () {
//        _showAlertDialog();
//      },
//    );
//  }
//
//  void _showAlertDialog() {
//
//    // set up the button
//    Widget okButton = FlatButton(
//      child: Text("OK"),
//      onPressed: () {
//        // This closes the dialog. `context` means the BuildContext, which is
//        // available by default inside of a State object. If you are working
//        // with an AlertDialog in a StatelessWidget, then you would need to
//        // pass a reference to the BuildContext.
//        Navigator.pop(context);
//      },
//    );
//
//    // set up the AlertDialog
//    AlertDialog alert = AlertDialog(
//      title: Text("Dialog title"),
//      content: Text("This is a Flutter AlertDialog."),
//      actions: [
//        okButton,
//      ],
//    );
//
//    // show the dialog
//    showDialog(
//      context: context,
//      builder: (BuildContext context) {
//        return alert;
//      },
//    );
//
//  }
//}

// GestureDetector

//class _MyWidgetState extends State<MyWidget> {
//
//  Color textColor = Colors.black;
//
//  @override
//  Widget build(BuildContext context) {
//    return GestureDetector(  //                  <--- GestureDetector
//      child: Text(
//        'Hello world',
//        style: TextStyle(
//          fontSize: 30,
//          color: textColor,
//        ),
//      ),
//      onTap: () {  //                            <--- onTap
//        _doSomething();
//      },
//    );
//  }
//
//  void _doSomething() {
//    setState(() {
//      // have to import 'dart:math' in order to use Random()
//      int randomHexColor = Random().nextInt(0xFFFFFF);
//      int opaqueColor = 0xFF000000 + randomHexColor;
//      textColor = Color(opaqueColor);
//    });
//  }
//}

// Navigation

//import 'package:flutter/material.dart';
//
//void main() {
//  runApp(MaterialApp(
//    title: 'Flutter',
//    home: FirstScreen(),
//  ));
//}
//
//class FirstScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('First screen')),
//      body: Center(
//          child: RaisedButton(
//            child: Text(
//              'Go to second screen',
//              style: TextStyle(fontSize: 24),
//            ),
//            onPressed: () {
//              _navigateToSecondScreen(context);
//            },
//          )
//      ),
//    );
//  }
//
//  void _navigateToSecondScreen(BuildContext context) {
//    Navigator.push(
//        context,
//        MaterialPageRoute(
//          builder: (context) => SecondScreen(),
//        ));
//  }
//}
//
//class SecondScreen extends StatelessWidget {
//  @override
//  Widget build(BuildContext context) {
//    return Scaffold(
//      appBar: AppBar(title: Text('Second screen')),
//      body: Center(
//        child: RaisedButton(
//          child: Text(
//            'Go back to first screen',
//            style: TextStyle(fontSize: 24),
//          ),
//          onPressed: () {
//            _goBackToFirstScreen(context);
//          },
//        ),
//      ),
//    );
//  }
//
//  void _goBackToFirstScreen(BuildContext context) {
//    Navigator.pop(context);
//  }
//}