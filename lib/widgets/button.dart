import 'package:flutter/material.dart';

class Buttons extends StatelessWidget {
  final String text;

  const Buttons({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
          height: 60,
          width: 400,
          decoration: BoxDecoration(
              color: Color.fromARGB(255, 149, 4, 81),
              borderRadius: BorderRadius.circular(20),
              boxShadow: const [
                BoxShadow(
                    color: Colors.transparent,
                    spreadRadius: 4,
                    offset: Offset(0, 3),
                    ),
              ],
              ),
              child: Center(child: Text(text,style: TextStyle(fontSize: 25,fontWeight: FontWeight.w800,color: Colors.white),
              ),
              ),
              ),
    );
  }
}
