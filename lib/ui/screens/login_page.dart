import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:register_login_app/ui/widgets/form_button.dart';
import 'package:register_login_app/ui/widgets/form_text_field.dart';
import 'package:register_login_app/ui/widgets/label_button.dart';
import 'package:register_login_app/ui/widgets/social_row.dart';
import 'package:register_login_app/ui/widgets/sperater_text.dart';

class LoginPage extends StatefulWidget {
  LoginPage({Key key}) : super(key: key);

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 100),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(
                  'Sign In',
                  style: GoogleFonts.montserrat(
                      color: Colors.black,
                      fontSize: 18,
                      fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 20),
                FormTextField(
                  icon: Icons.email_outlined,
                  hint: 'Email Address',
                  keyboardType: TextInputType.emailAddress,
                ),
                FormTextField(
                  icon: Icons.lock_outline,
                  hint: 'Password',
                  pass: true,
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: LabelButton(
                    liteText: '',
                    boldText: 'Forgot Password?',
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                FormButton(
                  btnText: 'Sign In',
                ),
                SizedBox(
                  height: 50,
                ),
                SeperaterText(),
                SizedBox(
                  height: 30,
                ),
                SocialRow(),
                SizedBox(
                  height: 50,
                ),
                LabelButton(
                  liteText: 'Not registered yet?',
                  boldText: ' Create Account.',
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
