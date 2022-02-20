import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Landing extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Humanation',
      theme: ThemeData(),
      home: Scaffold(
        body: Body(),
      ),
    );
  }
}

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(0, 0, 20, 0),
          child: Container(
            alignment: Alignment.topRight,
            child: FlatButton(
              child: Text('Login', style: TextStyle(color: Colors.white)),
              color: Color(0xFFFF725E),
              onPressed: () {},
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20)),
            ),
          ),
        ),
        SizedBox(
          height: 50,
        ),
        SvgPicture.asset('assets/img/landingimg.svg'),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
              alignment: Alignment.centerLeft,
              child: Text('Apa itu humanation ?')),
        ),
        SizedBox(height: 20),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 10, 0),
          child: Text(
              'Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum'),
        ),
        SizedBox(height: 30),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
              alignment: Alignment.centerLeft, child: Text('Founder')),
        ),
        SizedBox(height: 75),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child:
              Container(alignment: Alignment.center, child: Text('Copyright')),
        ),
      ],
    );
  }
}
