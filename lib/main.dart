import 'package:flutter/material.dart';

void main() {
  runApp(new MaterialApp(
      debugShowCheckedModeBanner: false, // untuk menghilangkan debug
      home: new MyApp()));
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: Color.fromRGBO(163, 51, 225, 1),
        body: Column(
          children: [
            Container(
              child: Stack(
                children: [
                  Positioned(
                    child: Container(
                      height: 290.0,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('img/background.png'),
                            fit: BoxFit.fill),
                      ),
                    ),
                  ),
                  Container(
                    height: 320.0,
                    width: 420,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('img/background-12.png'),
                          fit: BoxFit.fill),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 90.0, 0.0, 0.0),
                    child: new Text(
                      "Hello",
                      style: new TextStyle(
                          fontFamily: 'InterExBold',
                          fontSize: 60.0,
                          color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(15.0, 140.0, 0.0, 0.0),
                    child: new Text(
                      "There!",
                      style: new TextStyle(
                          fontFamily: 'InterExBold',
                          fontSize: 60.0,
                          color: Colors.white),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 250.0),
                          child: new TextField(
                              style: new TextStyle(color: Colors.white),
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: "Email",
                                labelStyle: TextStyle(
                                    fontFamily: 'InterReg',
                                    color: Colors.white,
                                    fontSize: 14),
                              )),
                        ),
                        Container(
                          child: new TextField(
                              style: new TextStyle(color: Colors.white),
                              obscureText:
                                  true, // untuk membuat tulisan bintang2
                              decoration: InputDecoration(
                                enabledBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                focusedBorder: UnderlineInputBorder(
                                    borderSide:
                                        BorderSide(color: Colors.white)),
                                labelText: "Password",
                                labelStyle: TextStyle(
                                    fontFamily: 'InterReg',
                                    color: Colors.white,
                                    fontSize: 14),
                              )),
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 195.0),
                          child: InkWell(
                            onTap: () {},
                            child: new Text("Forgot Password",
                                style: new TextStyle(
                                    fontFamily: 'InterReg',
                                    fontSize: 14,
                                    color: Colors.white)),
                          ),
                        ),
                        SizedBox(height: 30),
                        InkWell(
                          onTap: () {},
                          child: Container(
                            height: 50,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20.0),
                                color: Colors.purpleAccent[700]),
                            child: Center(
                              child: new Text("LOGIN",
                                  style: new TextStyle(
                                      fontFamily: 'InterReg',
                                      fontSize: 18,
                                      color: Colors.white)),
                            ),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 10.0),
                          child: new Text(
                            "Or",
                            style: new TextStyle(
                                fontFamily: 'InterBold',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 5.0, bottom: 10.0),
                          child: new Text(
                            "Sign up with:",
                            style: new TextStyle(
                                fontFamily: 'InterBold',
                                fontSize: 14.0,
                                color: Colors.white),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor: Colors.transparent,
                                backgroundImage: AssetImage('img/google.jpg'),
                              ),
                            ),
                            SizedBox(width: 20.0),
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage('img/fbook.jpg'),
                              ),
                            ),
                            SizedBox(width: 20.0),
                            GestureDetector(
                              onTap: () {},
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                backgroundImage: AssetImage('img/twt.jpg'),
                              ),
                            ),
                          ],
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
    );
  }
}
