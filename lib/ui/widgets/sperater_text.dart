import 'package:flutter/material.dart';

class SeperaterText extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 50),
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            flex: 2,
            child: Divider(
              height: 1.0,
              thickness: 0.7,
              color: Color(0xFFB3B7CA),
            ),
          ),
          Text(
            ' Or ',
          ),
          Expanded(
            flex: 2,
            child: Divider(
              height: 1.0,
              thickness: 0.7,
              color: Color(0xFFB3B7CA),
            ),
          ),
        ],
      ),
    );
  }
}
