import 'package:flutter/material.dart';

void main(){
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyForm(),
    ),
  );
}

class MyForm extends StatefulWidget{
  const MyForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm>{

  final _myFormkey = GlobalKey<FormState>();
  late DateTime _dateTime=DateTime.now();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text("My Form"),
      ),
      body: Container(
        padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 25.0),
        child: Form(
          key: _myFormkey,
          child: Column(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  decoration: InputDecoration(
                    labelText: "Name",
                    hintText: "Enter Your name",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  validator: (msg){
                    if(msg!.isEmpty){
                      return "Required";
                    }
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(10.0),
                child: TextFormField(
                  onSaved: (val) {
                    _dateTime = DateTime.now();
                  },
                  keyboardType: TextInputType.datetime,
                  decoration: InputDecoration(
                    labelText: "Date",
                    hintText: "Enter Your DOB",
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(3.0),
                    ),
                  ),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return "Please enter a date for your task";
                    }
                    return null;
                  },
                ),
              ),
                    /*
                    showDatePicker(
                        context: context,
                        initialDate: _dateTime == null ? DateTime.now() : _dateTime,
                        firstDate: DateTime(2001),
                        lastDate: DateTime(2021)
                    ).then((date) {
                      setState(() {
                        _dateTime = date;
                      });
                    });
                    */
              TextButton(
                child: const Text("Submit"),
                onPressed: () {
                  if (_myFormkey.currentState!.validate()) {
                    _myFormkey.currentState!.save();
                  }
                },
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.done),
        onPressed: () {
          _myFormkey.currentState!.validate();
        },
    ),
    );
  }
}