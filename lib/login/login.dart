import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:humanation/admin/home.dart';
import 'package:humanation/auth_service.dart';
import 'package:humanation/register/register.dart';

class Login extends StatelessWidget {
  const Login({Key? key}) : super(key: key);

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
    final TextEditingController emailC = TextEditingController();
    final TextEditingController passwordC = TextEditingController();

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 16),
        child: Column(
          children: [
            Text(
              'Login',
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextFormField(
                  controller: emailC,
                  decoration: new InputDecoration(hintText: 'Email'),
                ),
                TextFormField(
                  controller: passwordC,
                  obscureText: true,
                  decoration: new InputDecoration(
                    hintText: 'Password',
                    suffixIcon: InkWell(
                        child: Icon(
                      Icons.visibility,
                    )),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                  child: Text('Belum punya akun?'),
                ),
                Container(
                  width: 100,
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                    child: TextButton(
                        style: TextButton.styleFrom(
                            backgroundColor: Color(0xffF18265)),
                        onPressed: () {
                          AuthServices.login(emailC.text, passwordC.text)
                              .then((value) => Navigator.push(
                                    context,
                                    MaterialPageRoute(
                                        builder: (context) => Home()),
                                  ))
                              .catchError((e) => print('error login'));
                        },
                        child: Text(
                          'Login',
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
