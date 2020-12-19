import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _emailController;
  TextEditingController _passwordController;
  bool isSubmitting = false;

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context);

    final logo = Image.asset(
      "assets/logo.png",
      fit: BoxFit.contain,
    );

    final emailField = TextFormField(
      enabled: !isSubmitting,
      controller: _emailController,
      keyboardType: TextInputType.emailAddress,
      style: TextStyle(
        color: Colors.white,
      ),
      decoration: InputDecoration(
        hintText: "example@gmail.com",
        labelText: "Email",
        hintStyle: TextStyle(
          color: Colors.white,
        ),
        labelStyle: TextStyle(
          color: Colors.white,
        ),
        // TODO: Have bar not be blue like the app
      ),
    );

    final passwordField = Column(
      children: [
        TextFormField(
          enabled: !isSubmitting,
          controller: _passwordController,
          //keyboardType: TextInputType.emailAddress,
          obscureText: true,
          enableSuggestions: false,
          autocorrect: false,
          style: TextStyle(
            color: Colors.white,
          ),
          decoration: InputDecoration(
            labelText: "Password",
            labelStyle: TextStyle(
              color: Colors.white,
            ),
            // TODO: Have bar not be blue like the app
          ),
        ),
        Padding(
          padding: EdgeInsets.all(2.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            MaterialButton(
              child: Text(
                "Forgot Password",
                style: Theme.of(context)
                    .textTheme
                    .caption
                    .copyWith(color: Colors.white),
              ),
              onPressed: () {
                // TODO: Create forgot password popup.
              },
            )
          ],
        ),
      ],
    );

    final fields = Padding(
      padding: EdgeInsets.all(1),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          emailField,
          passwordField,
        ],
      ),
    );

    final loginButton = Material(
      elevation: 5.0,
      borderRadius: BorderRadius.circular(25.0),
      color: Colors.white,
      child: MaterialButton(
        minWidth: mq.size.width / 1.2,
        padding: EdgeInsets.fromLTRB(10.0, 15.0, 10.0, 15.0),
        child: Text(
          "Login",
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 20.0,
            color: Colors.black,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          print("Login Attempt Pressed");
          // TODO: Handle Authentication
        },
      ),
    );

    final bottom = Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        loginButton,
        Padding(
          padding: EdgeInsets.all(8.0),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Not a member?",
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  .copyWith(color: Colors.white),
            ),
            MaterialButton(
              child: Text(
                "Sign Up",
                style: Theme.of(context).textTheme.subtitle1.copyWith(
                      color: Colors.white,
                      decoration: TextDecoration.underline,
                    ),
              ),
              onPressed: null,
            ),
          ],
        )
      ],
    );

    return Scaffold(
      backgroundColor: Colors.blue,
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          padding: EdgeInsets.all(36.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: <Widget>[
              logo,
              fields,
              bottom,
            ],
          ),
        ),
      ),
    );
  }
}
