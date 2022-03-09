import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Home',
      theme: ThemeData(),
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Body(),
        bottomNavigationBar: BottomNavigationBar(
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.account_circle_rounded),
              label: 'User',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.settings),
              label: 'Settings',
            ),
          ],
          selectedItemColor: Color(0xFFFF725E),
        ),
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
        Text(
          'Welcome Admin',
          style: TextStyle(
            fontSize: 30,
          ),
        ),
        SizedBox(
          height: 50,
        ),
        Padding(
          padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
          child: Container(
              child: SvgPicture.asset('assets/img/home.svg',
                  height: 200,
                  width: MediaQuery.of(context).size.width,
                  fit: BoxFit.cover)),
        ),
        SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Icon(
                Icons.account_circle_rounded,
                size: 45,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
              child: Icon(
                Icons.email,
                size: 45,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0, 0, 0, 0),
              child: Icon(
                Icons.accessibility_rounded,
                size: 45,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 50,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 175,
          decoration: BoxDecoration(color: Color(0xFFFF725E)),
          child: Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Column(
              children: [
                Container(
                  alignment: Alignment.topLeft,
                  margin: EdgeInsets.fromLTRB(30, 50, 0, 20),
                  child: Text(
                    'User Unconfirm Role',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(30, 0, 20, 0),
                        child: Text(
                          'Confirmed',
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(0, 0, 20, 0),
                        child: Text(
                          'Unconfirmed',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
                Row(
                  children: [
                    Container(
                        margin: EdgeInsets.fromLTRB(55, 5, 20, 0),
                        child: Text(
                          '12',
                          style: TextStyle(color: Colors.white),
                        )),
                    Container(
                        margin: EdgeInsets.fromLTRB(50, 5, 20, 0),
                        child: Text(
                          '15',
                          style: TextStyle(color: Colors.white),
                        )),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
