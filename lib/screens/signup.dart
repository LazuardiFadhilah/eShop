import 'package:eshop/styles.dart';
import 'package:eshop/widgets/custom_textfield.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUp extends StatefulWidget {
  static const routeName = '/sign-up';
  const SignUp({Key? key}) : super(key: key);

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  bool isMember = false;

  Widget signUp() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Create an account', style: headerTextStyle),
        Text('Let\'s create your account', style: descTextStyle),
        const SizedBox(height: 30),
        const CustomTextField(title: 'Full Name', desc: 'Enter your fullname'),
        const CustomTextField(title: 'Email', desc: 'Enter your email address'),
        const CustomTextField(
          title: 'Password',
          desc: 'Enter your password',
          isObscured: true,
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          height: 50.h,
          decoration: BoxDecoration(
            color: blackColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'Sign Up',
            style: titleTextStyle.copyWith(
              color: bgColor,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1.5,
                height: 1,
                color: blackColor.withOpacity(0.3),
              ),
            ),
            Text(
              '  Or  ',
              style: descTextStyle,
            ),
            Expanded(
              child: Divider(
                thickness: 1.5,
                height: 1,
                color: blackColor.withOpacity(0.3),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          height: 50.h,
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(
              color: blackColor.withOpacity(0.6),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/google_icon.png',
                width: 24,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Sign Up with Google',
                style: titleTextStyle.copyWith(
                  color: blackColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Already a member?',
              style: descTextStyle,
            ),
            const SizedBox(
              width: 2,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isMember = true;
                });
              },
              child: Text(
                'Log In',
                style: titleTextStyle.copyWith(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            )
          ],
        )
      ],
    );
  }

  Widget signIn() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Wellcome Back', style: headerTextStyle),
        Text('Login to Your Account', style: descTextStyle),
        const SizedBox(height: 20),
        const CustomTextField(title: 'Email', desc: 'Enter your email address'),
        const CustomTextField(
          title: 'Password',
          desc: 'Enter your password',
          isObscured: true,
        ),
        const SizedBox(height: 10),
        Container(
          alignment: Alignment.center,
          height: 50.h,
          decoration: BoxDecoration(
            color: blackColor,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Text(
            'Log In',
            style: titleTextStyle.copyWith(
              color: bgColor,
            ),
          ),
        ),
        const SizedBox(height: 20),
        Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 1.5,
                height: 1,
                color: blackColor.withOpacity(0.3),
              ),
            ),
            Text(
              '  Or  ',
              style: descTextStyle,
            ),
            Expanded(
              child: Divider(
                thickness: 1.5,
                height: 1,
                color: blackColor.withOpacity(0.3),
              ),
            ),
          ],
        ),
        const SizedBox(height: 20),
        Container(
          alignment: Alignment.center,
          height: 50.h,
          decoration: BoxDecoration(
            color: bgColor,
            border: Border.all(
              color: blackColor.withOpacity(0.6),
              width: 1,
            ),
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                'assets/google_icon.png',
                width: 24,
              ),
              const SizedBox(
                width: 15,
              ),
              Text(
                'Log In with Google',
                style: titleTextStyle.copyWith(
                  color: blackColor,
                ),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 100,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Not a member?',
              style: descTextStyle,
            ),
            const SizedBox(
              width: 2,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  isMember = false;
                });
              },
              child: Text(
                'Sign Up',
                style: titleTextStyle.copyWith(
                  fontSize: 16,
                  decoration: TextDecoration.underline,
                ),
              ),
            ),
          ],
        )
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: bgColor,
      body: SafeArea(
        top: true,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: isMember ? signIn() : signUp(),
        ),
      ),
    );
  }
}
