import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:register_login_app/ui/widgets/form_button.dart';
import 'package:register_login_app/ui/widgets/form_text_field.dart';
import 'package:register_login_app/ui/widgets/label_button.dart';
import 'package:register_login_app/ui/widgets/social_row.dart';
import 'package:register_login_app/ui/widgets/sperater_text.dart';

import 'login_page.dart';

class RegisterPage extends StatefulWidget {
  RegisterPage({Key key}) : super(key: key);

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.only(top: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Create Account',
                style: GoogleFonts.montserrat(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 20),
              FormTextField(
                icon: Icons.person_outline,
                hint: 'First Name',
              ),
              FormTextField(
                icon: Icons.person_outline,
                hint: 'Last Name',
              ),
              FormTextField(
                icon: Icons.verified_user,
                hint: 'Username',
              ),
              FormTextField(
                icon: Icons.phone_android,
                hint: 'Phone Number',
                keyboardType: TextInputType.number,
              ),
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
              FormButton(
                btnText: 'Create Account',
              ),
              SizedBox(
                height: 20,
              ),
              SeperaterText(),
              SocialRow(),
              LabelButton(
                liteText: 'Already Registered?',
                boldText: ' Sign In.',
                pressed: () => navigateToLoginPage(),
              )
            ],
          ),
        ),
      ),
    );
  }

  navigateToLoginPage() {
    Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext ctx) {
      return LoginPage();
    }));
  }
}
