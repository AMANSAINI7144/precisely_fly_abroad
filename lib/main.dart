import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_form_builder/flutter_form_builder.dart';

void main()
{
  runApp(MyForm());
}

class MyForm extends StatelessWidget {

  final _formkey = GlobalKey<FormBuilderState>();


  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Form Builder",
      home: Scaffold(
        appBar: AppBar(title: Text("MY FORM")),
        body: Center
          (child: Container(
          child: Form(
            child: Column(children: <Widget>[
              Container(
                  child: TextFormField(
                      validator: (msg)
                      {
                        if(msg!.isEmpty)
                        {
                          return "please Enter name";
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                        labelText: "Name",
                        hintText: "Enter Your Name",
                      )
                  )
              ),
              Container(
                  child:
                  FlatButton(
                    onPressed: () => debugPrint("pressed"),
                    child: const Text(
                        "Next",
                        style: TextStyle(fontSize: 17,
                            backgroundColor: Colors.green,
                            color: Colors.white),
                    ),
                  ),
              ),
            ],
            ),
          ),
        ),
        ),
      ),
    );
  }
}