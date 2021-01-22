import 'package:flutter/material.dart';

class SocialRow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 15,horizontal: 30),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          SocialIcon(
            icon: 'search',
            color: Color(0xFFF),
            border: true,
          ),
          SocialIcon(
            icon: 'facebook',
            color: Color(0xFF3B5998),
          ),
          SocialIcon(
            icon: 'apple',
            color: Color(0xFF000000),
          ),
        ],
      ),
    );
  }
}

class SocialIcon extends StatelessWidget {
  final String icon;
  final Color color;
  final bool border;

  const SocialIcon({Key key, this.icon, this.color, this.border = false})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: color,
          shape: BoxShape.rectangle,
          border: Border.all(color: border ? Color(0xFFB3B7CA) : color),
          borderRadius: BorderRadius.circular(16)),
      child: Image.asset(
        'assets/$icon.png',
        scale: 2.0,
      ),
    );
  }
}
