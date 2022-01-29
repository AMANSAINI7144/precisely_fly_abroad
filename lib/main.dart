import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Myform1());
}

class Myform1 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyForm();
  }
}

class DOB extends StatefulWidget {
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
    return Container(
      child: Center(
        child: TextField(
          controller: dateinput, //editing controller of this TextField
          decoration: InputDecoration(
              //icon of text field
              labelText: "Enter Date",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(3.0),
              )),
          readOnly: true, //set it true, so that user will not able to edit text
          onTap: () async {
            DateTime pickedDate = await showDatePicker(
              context: context,
              initialDate: DateTime.now(),
              firstDate: DateTime(2000),
              lastDate: DateTime(2101),
            );
            String formattedDate = DateFormat('yyyy-MM-dd').format(pickedDate);
            setState(() {
              dateinput.text = formattedDate;
            });
          },
        ),
      ),
    );
  }
}

class MyForm extends State<Myform1> {
  TextEditingController dateinput = TextEditingController();
  int _value = 1;
  bool _checkBoxValue = false;
  String dropdownvalue = "Martial Status";
  var status = [
    "Martial Status",
    "Married",
    "Unmarried",
    "Separated",
    "Divorced",
    "Widowed"
  ];

  @override
  void initState() {
    dateinput.text = ""; //set the initial value of text field
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [
            Color(0xff462d0f),
            Color(0xffd8892e),
          ],
        ),
      ),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Form Builder",
        home: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
              leading: const Padding(
                padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                child: Image(
                  image: AssetImage('assets/appbarimage.png'),
                ),
              ),
              titleSpacing: 0,
              title: Column(
                children: [
                  Row(
                    children: [
                      GradientText(
                        text: 'Precisel',
                        colors: const <Color>[
                          Color(0xffff9724),
                          Color(0xffffb90b)
                        ],
                        style: const TextStyle(
                          fontSize: 33.0,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.02,
                        ),
                      ),
                      GradientText(
                        text: 'y',
                        colors: const <Color>[
                          Color(0xffff9724),
                          Color(0xffffb90b)
                        ],
                        style: const TextStyle(
                            fontSize: 33.0,
                            fontWeight: FontWeight.bold,
                            letterSpacing: 0.02),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 4,
                  ),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "FLY ABROAD",
                      style: TextStyle(
                          height: 0,
                          letterSpacing: 4,
                          fontSize: 13,
                          fontWeight: FontWeight.bold,
                          color: Color(0xffffb90b)),
                    ),
                  )
                ],
              ),
              actions: <Widget>[
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.facebook),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.camera),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {},
                  child: const Icon(Icons.search),
                ),
                const SizedBox(
                  width: 10,
                ),
              ],
              elevation: 0,
              backgroundColor: Colors.transparent),
          body: SingleChildScrollView(
            child: Container(
              child: Form(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Center(
                        child: Text(
                          "\n PRECISELY",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w700,
                            fontSize: 38,
                          ),
                        ),
                      ),
                    ),

                    //MAIN BIG PRECISELY.

                    Container(
                      child: Center(
                        child: Text(
                          '\n"Preparing students for international mobility programs"',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w400,
                              fontSize: 15),
                        ),
                      ),
                    ),

                    //Preparing ... programs TEXT.

                    Container(
                      child: Center(
                        child: Text(
                          "\n- Yours Truly",
                          style: TextStyle(
                            fontFamily: 'Caveat',
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                      ),
                    ),

                    //YOUR TRULY TEXT.

                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\n\n1 of 7",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Please fill with your details',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),

                          /*THIS CONTAINER CONTAINS 1 0F 7 TO PLEASE FILL WITH YOUR DETAILS*/

                          Container(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                labelText: "Name",
                                hintText: "Enter Your Name",
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                              ),
                            ),
                          ),

                          /*THIS CONTAINER IS FOR NAME .*/

                          Container(
                            padding: EdgeInsets.all(5),
                            child: DOB(),
                          ),

                          /*THIS CONTAINER IS FOR DATE OF BIRTH .*/

                          Container(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                const Padding(
                                  padding: EdgeInsets.all(5.0),
                                  child: Text(
                                    'Select Your Gender',
                                    style: TextStyle(
                                      color: Colors.grey,
                                      fontWeight: FontWeight.w500,
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(3.0),
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(3.0),
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
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Container(
                                    padding: EdgeInsets.all(3),
                                    decoration: BoxDecoration(
                                      border: Border.all(
                                        color: Colors.black,
                                      ),
                                      borderRadius: BorderRadius.circular(3.0),
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
                                          "Other",
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),

                          /*THIS CONTAINER IS FOR GENDER .*/

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                padding: EdgeInsets.all(3),
                                decoration: BoxDecoration(
                                  border: Border.all(
                                    color: Colors.black,
                                  ),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                // for including border around the martial status.
                                child: Center(
                                  child: Column(
                                    children: [
                                      DropdownButton<String>(
                                        value: dropdownvalue,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        items: status.map((String status) {
                                            return DropdownMenuItem<String>(
                                              value: status,
                                              child: Text(status),
                                            );
                                          },
                                        ).toList(),
                                        onChanged: (String newValue) {
                                          setState(() {
                                              this.dropdownvalue = newValue;
                                            });
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),

                          /*THIS CONTAINER IS FOR MARTIAL STATUS*/

                          Container(
                            child: Row(
                              children: [
                                Checkbox(
                                  value: _checkBoxValue,
                                  onChanged: (value) {
                                    setState(() {
                                      _checkBoxValue = value;
                                    });
                                  },
                                ),
                                const Text(
                                  "Please accept our Terms and conditions",
                                ),
                              ],
                            ),
                          ),

                          /*THIS CONTAINER IS FOR CHECKBOX AT THE END .*/

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
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
                                    onPressed: () => {
                                      print("Next Pressed"),
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),

                          /*THIS CONTAINER IS TO MOVE TO NEXT PAGE ie:NEXT BUTTON .*/

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: InkWell(
                                child: new Text('Precisely Website'),
                                onTap: () =>
                                    launch('https://www.precisely.co.in/'),
                              ),
                            ),
                          ),

                          /*THIS CONTAINER IS FOR PRECISELY WEB SITE .*/

                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
