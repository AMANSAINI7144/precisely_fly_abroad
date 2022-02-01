import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Page6());
}

class Page6 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyForm();
  }
}
class SliderColorWidget extends StatefulWidget {
  @override
  _SliderColorWidgetState createState() => _SliderColorWidgetState();
}

class _SliderColorWidgetState extends State<SliderColorWidget> {
  double value = 50;

  @override
  Widget build(BuildContext context) =>
      SliderTheme(
        data: SliderThemeData(
          trackHeight: 8,
          thumbColor: Colors.blue,
          activeTrackColor: Colors.white,
          inactiveTrackColor: Colors.white,
          overlayColor: Color(0xffFBEAEA),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Slider(
              value: value,
              min: 0,
              max: 100,
              onChanged: (value) => setState(() => this.value = value),
            ),
          ],
        ),
      );
}

class MyForm extends State<Page6> {
  TextEditingController dateinput = TextEditingController();
  String dropdownvalue = "Select Majors";
  var majors = [
    "Select Majors",
    "Computer Science Engineering",
    "Economics",
    "Electronics and communication Engineering",
    "Civil Engineering",
    "Mechanical Engineering",
    "Electronics Engineering",
    "Finance",
    "Data Science",
  ];

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
                                  "\n\n6 of 7",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  'Please enter your preferences',
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
                                fillColor: Color.fromRGBO(0, 0, 0, 0.4),
                                filled: true,
                                labelText: "University Ranking (1-1000)",
                                labelStyle: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),

                          /*THIS CONTAINER IS FOR NAME .*/

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                decoration: BoxDecoration(
                                  color: Color(0xff3723ee),
                                  borderRadius: BorderRadius.circular(3.0),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    children: [
                                      DropdownButton<String>(
                                        value: dropdownvalue,
                                        icon: Icon(Icons.keyboard_arrow_down),
                                        items: majors.map(
                                              (String status) {
                                            return DropdownMenuItem<String>(
                                              value: status,
                                              child: Text(
                                                status,
                                                /*
                                                style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: 14,
                                                ),
                                  //WHILE ADDING THIS COMMENT IN THE CODE PROBLEM OCCURRED.
                                                */
                                              ),
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

                          /*THIS CONTAINER IS FOR   SELECT MAJORS */

                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'How important is college ranking to you?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                SliderColorWidget(),
                              ],
                            ),
                          ),

                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 10,
                                ),
                                Text(
                                  'How important is cost of attendance to you?',
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 14),
                                ),
                                SliderColorWidget(),
                              ],
                            ),
                          ),

                          Container(
                            child: Padding(
                              padding: const EdgeInsets.all(5.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: <Widget>[
                                  TextButton(
                                    child: const Text("Prev"),
                                    style: TextButton.styleFrom(
                                      primary: Colors.grey,
                                      backgroundColor: Color(0xffe8e8e8),
                                      side: const BorderSide(
                                        width: 1,
                                        color: Colors.black12,
                                      ),
                                    ),
                                    onPressed: () => {
                                      print("Next Pressed"),
                                    },
                                  ),
                                  TextButton(
                                    child: const Text("Next"),
                                    style: TextButton.styleFrom(
                                      primary: Colors.black,
                                      backgroundColor: Color(0xffffcc00),
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
                                child: new Text(
                                  'Precisely Website',
                                  style: TextStyle(
                                    color: Colors.white,
                                  ),
                                ),
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
