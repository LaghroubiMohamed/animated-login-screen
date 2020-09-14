import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:show_up_animation/show_up_animation.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Container(
          child: Column(
            children: [
              Flexible(
                child: ShowUpAnimation(
                  delayStart: Duration(milliseconds: 230),
                  animationDuration: Duration(milliseconds: 1500),
                  curve: Curves.ease,
                  direction: Direction.vertical,
                  offset: -2,
                  child: Container(
                    height: 360,
                    decoration: BoxDecoration(
                        image: DecorationImage(
                      image: AssetImage('assets/images/background.png'),
                      fit: BoxFit.fill,
                    )),
                    child: Stack(
                      children: [
                        Positioned(
                            left: 25,
                            height: 200,
                            width: 90,
                            child: ShowUpAnimation(
                              delayStart: Duration(milliseconds: 240),
                              animationDuration: Duration(seconds: 2),
                              curve: Curves.bounceOut,
                              direction: Direction.horizontal,
                              offset: -2,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-1.png')),
                                ),
                              ),
                            )),
                        Positioned(
                            left: 120,
                            height: 160,
                            width: 90,
                            child: ShowUpAnimation(
                              delayStart: Duration(milliseconds: 250),
                              animationDuration: Duration(milliseconds: 2500),
                              curve: Curves.bounceOut,
                              direction: Direction.horizontal,
                              offset: -2,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/light-2.png')),
                                ),
                              ),
                            )),
                        Positioned(
                            right: 30,
                            height: 300,
                            width: 90,
                            child: ShowUpAnimation(
                              delayStart: Duration(milliseconds: 250),
                              animationDuration: Duration(seconds: 2),
                              curve: Curves.decelerate,
                              direction: Direction.horizontal,
                              offset: 2,
                              child: Container(
                                decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/clock.png')),
                                ),
                              ),
                            )),
                        Positioned(
                          left: 140,
                          height: 450,
                          child: Container(
                            child: ShowUpAnimation(
                              delayStart: Duration(milliseconds: 180),
                              animationDuration: Duration(seconds: 2),
                              curve: Curves.easeIn,
                              direction: Direction.vertical,
                              offset: 2,
                              child: Center(
                                child: Text(
                                  'Login',
                                  style: GoogleFonts.poppins(
                                    textStyle: TextStyle(
                                      fontSize: 40,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(0),
                child: ShowUpAnimation(
                  delayStart: Duration(milliseconds: 210),
                  animationDuration: Duration(seconds: 2),
                  curve: Curves.easeIn,
                  direction: Direction.vertical,
                  offset: 2,
                  child: Container(
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                      boxShadow: [
                        BoxShadow(
                          blurRadius: 10,
                          color: Colors.grey[300],
                          offset: Offset(5, 5),
                        ),
                      ],
                    ),
                    height: 120,
                    width: 300,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Email or Phone number',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                        Divider(
                          height: 5,
                          indent: 5,
                          endIndent: 5,
                        ),
                        Container(
                          padding: EdgeInsets.only(left: 20),
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: 'Password',
                              border: InputBorder.none,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              ShowUpAnimation(
                delayStart: Duration(milliseconds: 210),
                animationDuration: Duration(seconds: 2),
                curve: Curves.easeIn,
                direction: Direction.vertical,
                offset: 2,
                child: Container(
                  margin: EdgeInsets.only(top: 15),
                  width: 300,
                  height: 50,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                      Color.fromRGBO(143, 148, 251, 1),
                      Color.fromRGBO(143, 148, 251, .6),
                    ]),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Center(
                    child: Text(
                      'Login',
                      style: GoogleFonts.poppins(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                ),
              ),
              SizedBox(height: 20),
              ShowUpAnimation(
                delayStart: Duration(milliseconds: 210),
                animationDuration: Duration(seconds: 2),
                curve: Curves.easeIn,
                direction: Direction.vertical,
                offset: 2,
                child: Text(
                  'Forget Password?',
                  style: GoogleFonts.poppins(
                    textStyle: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color.fromRGBO(143, 148, 251, 1),
                    ),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}
