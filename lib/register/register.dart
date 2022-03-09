import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humanation/auth_service.dart';
import 'package:humanation/login/login.dart';

class register extends StatelessWidget {
  const register({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: MyCustomForm(),
      ),
    );
  }
}

class MyCustomForm extends StatelessWidget {
  const MyCustomForm({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController emailregistration = TextEditingController();
    final TextEditingController passwordregistraion = TextEditingController();
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
        child: Column(
          children: [
            Text(
              'Register',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextField(
                  controller: emailregistration,
                  decoration: new InputDecoration(hintText: 'Email'),
                ),
                TextFormField(
                  controller: passwordregistraion,
                  obscureText: true,
                  decoration: new InputDecoration(
                    hintText: 'Password',
                    suffixIcon: InkWell(
                        child: Icon(
                      Icons.visibility,
                    )),
                  ),
                ),
                Container(
                  width: 100,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xFFFF725E)),
                        onPressed: () {
                          AuthServices.register(emailregistration.text,
                                  passwordregistraion.text)
                              .then((value) => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Login()),
                                  ))
                              .catchError((e) => print('error login'));
                        },
                        child: Text(
                          'Daftar',
                          style: TextStyle(color: Color(0xffffffff)),
                        )),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
