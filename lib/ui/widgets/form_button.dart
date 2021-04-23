import 'package:flutter/material.dart';

class FormButton extends StatelessWidget {
  final String btnText;

  const FormButton({Key key, this.btnText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return TextButton(
      style: TextButton.styleFrom(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
          minimumSize: Size(size.width * 0.92, 60),
          backgroundColor: Colors.black),
      onPressed: () {},
      child: Text(
        btnText,
        style: TextStyle(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
