import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class FormButton extends StatelessWidget {
  final String btnText;

  const FormButton({Key key, this.btnText}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      height: 60.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      minWidth: MediaQuery.of(context).size.width * 0.92,
      color: Colors.black,
      onPressed: () {},
      child: Text(
        btnText,
        style: GoogleFonts.montserrat(
          color: Colors.white,
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
