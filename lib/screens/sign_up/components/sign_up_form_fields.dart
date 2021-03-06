import 'package:around_the_world/components/custom_suffix_icon.dart';
import 'package:around_the_world/components/default_button.dart';
import 'package:around_the_world/components/form_error.dart';
import 'package:around_the_world/constants.dart';
import 'package:around_the_world/screens/log_in/log_in_screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';

class SignUpFormFields extends StatefulWidget {
  SignUpFormFields(Size size);

  @override
  _SignUpFormFieldsState createState() => _SignUpFormFieldsState();
}

class _SignUpFormFieldsState extends State<SignUpFormFields> {
  final _formKey = GlobalKey<FormState>();
  String email;
  String password;
  String confirm_password;
  final List<String> errors = [];

  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Form(
        key: _formKey,
        child: Column(
          children: [
            buildEmailFormField(),
            SizedBox(height: size.height * 0.03),
            buildPasswordFormField(),
            SizedBox(height: size.height * 0.03),
            buildConfPasswordFormField(),
            FormError(errors: errors),
            SizedBox(height: size.height * 0.03),
            DefaultButton(
              text: "Sign Up",
              press: () {
                if (_formKey.currentState.validate()) {
                  //go to profile page
                  Navigator.push(
                    context,
                    PageTransition(
                      type: PageTransitionType.bottomToTop,
                      child: LogIn(),
                    ),
                  );
                }
              },
            )
          ],
        ));
  }

  TextFormField buildConfPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => confirm_password = newValue,
      onChanged: (value) {
        if (password == confirm_password) {
          removeError(error: kMatchPassError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          return "";
        } else if (password != value) {
          addError(error: kMatchPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Confirm Password",
        hintText: "Confirm Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/key.svg",
        ),
      ),
    );
  }

  TextFormField buildPasswordFormField() {
    return TextFormField(
      obscureText: true,
      onSaved: (newValue) => password = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kPassNullError);
        } else if (value.length >= 8) {
          removeError(error: kShortPassError);
        }
        password = value;
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kPassNullError);
          return "";
        } else if (value.length < 8) {
          addError(error: kShortPassError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Password",
        hintText: "Your Password",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/key.svg",
        ),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      keyboardType: TextInputType.emailAddress,
      onSaved: (newValue) => email = newValue,
      onChanged: (value) {
        if (value.isNotEmpty) {
          removeError(error: kEmailNullError);
        } else if (emailValidatorRegExp.hasMatch(value)) {
          removeError(error: kInvalidEmailError);
        }
        return null;
      },
      validator: (value) {
        if (value.isEmpty) {
          addError(error: kEmailNullError);
          return "";
        } else if (!emailValidatorRegExp.hasMatch(value)) {
          addError(error: kInvalidEmailError);
          return "";
        }
        return null;
      },
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter Your Email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSuffixIcon(
          svgIcon: "assets/icons/address.svg",
        ),
      ),
    );
  }
}
