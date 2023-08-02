import 'package:eshop/styles.dart';
import 'package:eshop/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';

class SignUp extends StatelessWidget {
  static const routeName = '/sign-up';
  const SignUp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: EdgeInsets.all(20),
          child: CustomTextField(
            title: 'Full name',
            desc: 'Enter your full name',
          ),
        ),
      ),
    );
  }
}
