import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LabelButton extends StatelessWidget {
  final String liteText;
  final String boldText;
  final Function pressed;

  const LabelButton({Key key, this.liteText, this.boldText, this.pressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 5,horizontal: 20),
        child: RichText(
          text: TextSpan(
              text: liteText,
              style: GoogleFonts.montserrat(color: Colors.black),
              children: [
                TextSpan(
                    text: boldText,
                    style: GoogleFonts.montserrat(
                        color: Colors.black, fontWeight: FontWeight.bold))
              ]),
        ),
      ),
    );
  }
}
