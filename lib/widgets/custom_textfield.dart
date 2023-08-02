import 'package:eshop/styles.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String title;
  final String desc;
  final bool? isObscured;
  const CustomTextField(
      {Key? key, required this.title, required this.desc, this.isObscured})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          title,
          style: titleTextStyle,
        ),
        const SizedBox(
          height: 5,
        ),
        TextField(
          decoration: InputDecoration(
            contentPadding: const EdgeInsets.symmetric(
              horizontal: 20,
              vertical: 10,
            ),
            filled: true,
            fillColor: greyColor,
            hintText: desc,
            hintStyle: descTextStyle,
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none,
            ),
            suffixIcon: isObscured != null
                ? const Icon(Icons.remove_red_eye)
                : const SizedBox(),
          ),
        ),
      ],
    );
  }
}
