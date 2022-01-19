

import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App1',
      home: Scaffold(
        appBar: AppBar(
          title: Text("Forms By Amulya"),
          leading:Icon(Icons.home),
        ),
        body: Forms(

        ),
      ),
    );
  }
}
class Forms extends StatefulWidget {
  const Forms({Key? key}) : super(key: key);

  @override
  _FormsState createState() => _FormsState();
}

class _FormsState extends State<Forms> {
  final keys= GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
      key: keys,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
        TextFormField(
          decoration: InputDecoration (
            hintText: "Enter Your Name",
            labelText: "Name",
            icon: Icon(Icons.person),

          ),
          validator: (value) {
            if (value.isEmpty) {
              return "can't be empty";
            }

            return null;
          },
        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Enter Password",
            labelText: "Password",
            icon: Icon(Icons.lock),
          ),
          validator: (value) {
            if (value.isEmpty) {
              return "can't be empty";
            }

            return null;
          },

        ),
        TextFormField(
          decoration: InputDecoration(
            hintText: "Github Link",
            labelText: "Github",
            icon: Icon(Icons.link),
          ),
          validator: (value) {
            if ( value.isEmpty) {
              return "can't be empty";
            }

            return null;
          },
        ),
          Container(
              child: RaisedButton(
                child: Text("Submit"),
                onPressed: (){
                  if(keys.currentState.validate()){
                    Scaffold.of(context).showSnackBar(SnackBar(content: Text('Validation Going on'),)),
                  }

                },
              ),
          ),
    ],

        ),
      );

  }
}
