import 'package:easy_gradient_text/easy_gradient_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

void main() {
  runApp(Page3());
}

class Page3 extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyForm();
  }
}

class MyForm extends State<Page3> {
  TextEditingController dateinput = TextEditingController();

  @override
  void initState() {
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
            backgroundColor: Colors.transparent,
          ),
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
                                  "\n\n5 of 7",
                                  style: TextStyle(
                                    color: Colors.grey,
                                    fontWeight: FontWeight.w500,
                                    fontSize: 14,
                                  ),
                                ),
                                Text(
                                  "Please enter your scores",
                                  textAlign: TextAlign.center,
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15),
                                ),
                              ],
                            ),
                          ),

                          /*THIS CONTAINER CONTAINS 5 0F 7 TO PLEASE FILL WITH YOUR DETAILS*/

                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "\n\n*In case, you have not taken any of these test you may well enter an indicative expected scores between the allowed range",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w300,
                                    fontSize: 14,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          SizedBox(
                            height: 20,
                          ),

                          Container(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(0, 0, 0, 0.4),
                                filled: true,
                                labelText: "GRE Q (130-170 or 200-800)",
                                labelStyle: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(0, 0, 0, 0.4),
                                filled: true,
                                labelText: "GRE V (130-170 or 200-800)",
                                labelStyle: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(0, 0, 0, 0.4),
                                filled: true,
                                labelText: "GRE W (0-6)",
                                labelStyle: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(0, 0, 0, 0.4),
                                filled: true,
                                labelText: "TOEFL (0-120)",
                                labelStyle: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),

                          Container(
                            padding: EdgeInsets.all(5),
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: Color.fromRGBO(0, 0, 0, 0.4),
                                filled: true,
                                labelText: "ILTS (1-10)",
                                labelStyle: new TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),

                          Container(
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

                          /*THIS CONTAINER IS TO MOVE TO NEXT PAGE ie:NEXT BUTTON .*/

                          SizedBox(
                            height: 45,
                          ),

                          Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.end,
                              mainAxisAlignment: MainAxisAlignment.end,
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                InkWell(
                                  child: new Text(
                                    'Precisely Website',
                                    style: TextStyle(
                                      color: Colors.white,
                                    ),
                                  ),
                                  onTap: () =>
                                      launch('https://www.precisely.co.in/'),
                                ),
                              ],
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
