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
  late DateTime _dateTime = DateTime.now();
  int _value = 1;
  bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar : AppBar(
        title : const Text("My Form"),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25.0,horizontal: 25.0),
          child: Form(
            key: _myFormkey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
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
                        return "Please enter your Date Of Birth";
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
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    const Padding(
                      padding: EdgeInsets.all(10.0),
                      child: Text(
                        'Select Your Gender',
                      ),
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 1,
                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value = value as int;
                            });
                          },
                        ),
                        const Text("Male"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 2,
                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value = value as int;
                            });
                          },
                        ),
                        const Text("Female"),
                      ],
                    ),
                    Row(
                      children: <Widget>[
                        Radio(
                          value: 3,
                          groupValue: _value,
                          onChanged: (value){
                            setState(() {
                              _value = value as int;
                            });
                          },
                        ),
                        const Text("Other"),
                      ],
                    ),
                    ],
                ),
                Row(
                  children: [
                    Checkbox(
                      value: _checkBoxValue,
                      onChanged: (bool? value) {
                        setState(() {
                          _checkBoxValue = value as bool;
                        });
                      },
                    ),
                    const Text(
                        "Please accept our Terms and conditions"
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: <Widget>[
                      TextButton(
                        child: const Text("Prev"),
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.blueGrey,
                          onSurface: Colors.grey,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black12,
                          ),
                        ),
                        onPressed: () {
                          if (_myFormkey.currentState!.validate()) {
                            _myFormkey.currentState!.save();
                          }
                        },
                      ),
                      const SizedBox(
                        width: 3.0,
                      ),
                      TextButton(
                        child: const Text("Next"),
                        style: TextButton.styleFrom(
                          primary: Colors.black,
                          backgroundColor: Colors.yellow,
                          onSurface: Colors.grey,
                          side: const BorderSide(
                            width: 1,
                            color: Colors.black12,
                          ),
                        ),
                        onPressed: () {
                          if (_myFormkey.currentState!.validate()) {
                            _myFormkey.currentState!.save();
                          }
                        },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}