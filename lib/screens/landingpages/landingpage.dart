import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_project/widgets/button.dart';
import 'package:flutter_project/screens/loginscreens/login.dart';
import 'package:flutter_project/widgets/text_field.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
          children: [
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Icon(
                  Icons.menu_rounded,
                  size: 40,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 340,
                ),
                CircleAvatar(
                  radius: 20,
                  child: Image(image: AssetImage('assets/11.png')),
                ),
              ],
            ),
            const Padding(
              padding: EdgeInsets.all(30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Hello',
                      style: TextStyle(
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Colors.white)),
                  Text(
                    'Sign In!!!!!',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.w800,
                        color: Colors.white),
                  )
                ],
              ),
            ),
            const UserName(
                icon: Icons.supervised_user_circle,
                obscureText: false,
                hintText: 'User Name'),
            const SizedBox(
              height: 30,
            ),
            const UserName(
                icon: Icons.email, obscureText: false, hintText: 'Email'),
            const SizedBox(
              height: 30,
            ),
            const UserName(
                icon: Icons.lock, obscureText: true, hintText: 'Password'),
            const SizedBox(
              height: 30,
            ),
            const UserName(
                icon: Icons.lock_clock_rounded,
                obscureText: true,
                hintText: 'Confirm Password'),
            const SizedBox(
              height: 30,
            ),
            const Buttons(text: 'Sign Up'),
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'I Have an Account Already',
                  style: TextStyle(fontSize: 20, color: Color.fromARGB(121, 255, 255, 255)),
                ),
                const SizedBox(
                  width: 10,
                ),
                GestureDetector(
                  onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));},
                  child: const SizedBox(
                      height: 40,
                      width: 60,
                      child: Center(
                        child: Text(
                          'LOGIN',
                          style: TextStyle(
                              color: Color.fromARGB(255, 255, 255, 255),
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
