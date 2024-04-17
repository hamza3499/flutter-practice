import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/Screens/landingpage.dart';
import 'package:flutter_project/Widgets/button.dart';
import 'package:flutter_project/landingpage.dart';
import 'package:flutter_project/Widgets/text_field.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 20,
        ),
        height: double.infinity,
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color.fromARGB(255, 50, 1, 49),
              Color.fromARGB(255, 144, 5, 72)
            ], // Specify your gradient colors
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.of(context).pop();
                  },
                  child: const Icon(
                    Icons.arrow_back,
                    size: 40,
                    color: Colors.white,
                  ),
                ),
                const SizedBox(
                  width: 340,
                ),
                const CircleAvatar(
                  radius: 20,
                  child: Image(image: AssetImage('assets/11.png')),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.only(left: 30, right: 30, top: 100),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  UserName(
                      icon: Icons.email, obscureText: false, hintText: 'Email'),
                  SizedBox(
                    height: 30,
                  ),
                  UserName(
                      icon: Icons.lock,
                      obscureText: true,
                      hintText: 'Password'),
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Padding(
              padding: EdgeInsets.only(right: 40),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(
                    height: 40,
                    width: 130,
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w900),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              width: 10,
            ),
            const Buttons(text: 'Login'),
            const SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Dont Have An Account',
                  style: TextStyle(
                      fontSize: 20, color: Color.fromARGB(130, 255, 255, 255)),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const HomePage()));
                  },
                  child: const SizedBox(
                      height: 40,
                      width: 80,
                      child: Center(
                        child: Text(
                          'SIGN UP',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 20,
                              fontWeight: FontWeight.w900),
                        ),
                      )),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
