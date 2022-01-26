import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

void main() {
  runApp(
    const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyForm(),
    ),
  );
}

class MyForm extends StatefulWidget {
  const MyForm({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return MyFormState();
  }
}

class MyFormState extends State<MyForm> {
  final _myFormkey = GlobalKey<FormState>();
  int _value = 1;
  bool _checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.orange,
      body:SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(vertical: 25.0, horizontal: 25.0),
          color: Colors.orange,
          child: Column(
            children: <Widget>[
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  'PRECISELY',
                  style: TextStyle(
                    fontSize: 42,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '" Preparing students for international mobility programs "',
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(10.0),
                child: Text(
                  '-Your Truly',
                  style: TextStyle(
                    fontSize: 18,
                    fontStyle: FontStyle.italic,
                    color: Colors.white,
                  ),
                ),
              ),
              Form(
                key: _myFormkey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Name",
                          hintText: "Enter Your name",
                          border: OutlineInputBorder(
                            borderSide: const BorderSide(
                              color: Colors.white,
                              width: 5,
                            ),
                            borderRadius: BorderRadius.circular(3.0),

                          ),
                        ),
                        validator: (msg) {
                          if (msg!.isEmpty) {
                            return "Required";
                          }
                        },
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.all(5),
                      child: const DOB(),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        const Padding(
                          padding: EdgeInsets.all(8.0),
                          child: Text(
                            'Select Your Gender',
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xABCC885F),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value as int;
                                    });
                                  },
                                ),
                                const Text(
                                  "Male",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height:10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xABCC885F),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value as int;
                                    });
                                  },
                                ),
                                const Text(
                                  "Female",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        const SizedBox(
                          height:10,
                        ),
                        Padding(
                          padding: const EdgeInsets.all(5.0),
                          child: Container(
                            decoration: BoxDecoration(
                              color: const Color(0xABCC885F),
                              border: Border.all(
                                color: Colors.white,
                              ),
                            ),
                            child: Row(
                              children: <Widget>[
                                Radio(
                                  value: 3,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value as int;
                                    });
                                  },
                                ),
                                const Text(
                                  "Others",
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Checkbox(
                          value: _checkBoxValue,
                          activeColor: Colors.white,
                          checkColor: Colors.black,
                          onChanged: (bool? value) {
                            setState(() {
                              _checkBoxValue = value as bool;
                            });
                          },
                        ),
                        const Text(
                          "Please accept our Terms and conditions",
                          style: TextStyle(
                            color: Colors.white,
                          ),
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
            ],
          ),
        ),
      ),
    );
  }
}

class DOB extends StatefulWidget {
  const DOB({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _DOB();
  }
}

class _DOB extends State<DOB> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
    dateinput.text = "";
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
        child: TextField(
          controller: dateinput,
          decoration: InputDecoration(
              labelText: "Enter Date",
              border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Colors.white,
                  width: 5,
                ),
                borderRadius: BorderRadius.circular(3.0),
              )),
          readOnly: true,
          onTap: () async {
            DateTime? pickedDate = await showDatePicker(
                context: context,
                initialDate: DateTime.now(),
                firstDate: DateTime(2000),
                lastDate: DateTime(2101));
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate!);
            setState(() {
              dateinput.text = formattedDate; //set output date to TextField value.
            });
          },
        ));
  }
}