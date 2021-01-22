import 'package:flutter/material.dart';

class FormTextField extends StatefulWidget {
  final String hint;
  final IconData icon;
  final bool pass;
  final TextInputType keyboardType;

  FormTextField(
      {Key key,
      this.hint,
      this.icon, 
      this.pass = false,
      this.keyboardType = TextInputType.text})
      : super(key: key);

  @override
  _FormTextFieldState createState() => _FormTextFieldState();
}

class _FormTextFieldState extends State<FormTextField> {
  bool obscureText = true;
  bool showPass = false;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Color(0xFFF3F4F8),
        borderRadius: BorderRadius.all(Radius.circular(20)),
      ),
      child: TextField(
        keyboardType: widget.keyboardType,
        obscureText: widget.pass ? obscureText : false,
        cursorColor: Colors.black,
        style: TextStyle(fontSize: 18, color: Colors.black),
        decoration: InputDecoration(
          prefixIcon: Icon(
            widget.icon,
            color: Colors.grey,
            size: 24,
          ),
          suffixIcon: widget.pass
              ? IconButton(
                  icon:
                      Icon(showPass ? Icons.visibility : Icons.visibility_off),
                  onPressed: _toggle,
                  color: Colors.grey,
                )
              : SizedBox(),
          hintText: widget.hint,
          border: InputBorder.none,
        ),
      ),
    );
  }

  void _toggle() {
    setState(() {
      showPass = !showPass;
      obscureText = !obscureText;
    });
  }
}
