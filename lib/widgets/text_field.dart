import 'package:flutter/material.dart';

class UserName extends StatelessWidget {
  final IconData icon;
  final String hintText;
  final bool obscureText;
  const UserName({
    super.key,
    required this.icon,
    required this.obscureText,
    required this.hintText,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 60,
        width: 400,
        decoration: BoxDecoration(
            color: const Color.fromARGB(60, 120, 125, 120),
            borderRadius: BorderRadius.circular(20),
            boxShadow: const [
              BoxShadow(
                  color: Colors.transparent,
                  spreadRadius: 4,
                  offset: Offset(0, 3)),
            ]),
        child: TextField(
          obscureText: obscureText,
          decoration: InputDecoration(
              focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(11),
                  borderSide: const BorderSide(
                      color: Color.fromARGB(255, 250, 246, 10), width: 2)),
              hintText: hintText,
              hintStyle: const TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontSize: 20),
              prefixIcon: 
              
              Padding(
                padding: const EdgeInsets.only(left: 30,right: 20),
                child: Icon(
                
                  icon,
                  color: Colors.white,
                  size: 30,
                ),
              )),
        ),
      ),
    );
  }
}
