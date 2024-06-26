import 'package:flutter/material.dart';

class RoundedCircularButton extends StatelessWidget {
  final String text;
  final String routes;
  const RoundedCircularButton(
      {super.key, required this.text, required this.routes});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return ElevatedButton(
        onPressed: () {
          Navigator.pushNamed(context, routes);
        },
        style: ElevatedButton.styleFrom(
            backgroundColor: Colors.blue,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(30))),
        child: Text(
          text,
          style: const TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.w600),
        ));
  }
}
