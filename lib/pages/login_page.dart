import 'package:flutter/material.dart';
import 'package:loginuinew/routes.dart';
import 'package:loginuinew/widgets/rounded_circular_button.dart';
import 'package:loginuinew/widgets/rounded_text_form_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1.0),
      body: _buildUI(context),
    );
  }

  Widget _buildUI(BuildContext context) {
    return Column(
      children: [_header(context), _loginForm(context)],
    );
  }

  Widget _header(BuildContext context) {
    return Container(
        padding:
            EdgeInsets.only(top: MediaQuery.of(context).size.height * 0.10),
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height * 0.25,
        color: const Color.fromRGBO(230, 253, 253, 1.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const Padding(
              padding: EdgeInsets.fromLTRB(20, 0, 0, 0),
              child: Text(
                "Sign In",
                style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w600,
                    fontSize: 30),
              ),
            ),
            Image.asset(
              "assets/images/headerbg.png",
              width: MediaQuery.of(context).size.width * 0.45,
              fit: BoxFit.fill,
            )
          ],
        ));
  }

  Widget _loginForm(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      height: MediaQuery.of(context).size.height * 0.75,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 40),
        child: Form(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [_formField(context), _bottomButtons(context)],
        )),
      ),
    );
  }

  Widget _formField(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.25,
        child: const Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            RoundedTextFormField(
                prefixIcon: Icons.email_outlined, hintText: "Email Address"),
            RoundedTextFormField(
                prefixIcon: Icons.lock_outline,
                hintText: "Password",
                obscureText: true),
            Text(
              "Forgot Password",
              style: TextStyle(color: Colors.blue),
            )
          ],
        ));
  }

  Widget _bottomButtons(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          height: MediaQuery.of(context).size.height * 0.06,
          child: const RoundedCircularButton(
            text: "Sign In",
            routes: Routes.signupRoute,
          ),
        ),
        const Padding(
          padding: EdgeInsets.symmetric(vertical: 30),
          child: Text(
            "I don't have an account",
            style: TextStyle(
                color: Colors.blue,
                fontSize: 20,
                decoration: TextDecoration.underline),
          ),
        )
      ],
    );
  }
}
