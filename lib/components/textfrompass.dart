import 'package:flutter/material.dart';

class CustomTextpass extends StatefulWidget {
  final String hinttext;
  final TextEditingController mycontroller;
  final String? Function(String?)? validator;

  const CustomTextpass(
      {super.key,
      required this.hinttext,
      required this.mycontroller,
      required this.validator});

  @override
  State<CustomTextpass> createState() => _CustomTextpassState();
}

class _CustomTextpassState extends State<CustomTextpass> {
  bool passwordVisible = false;

  @override
  void initState() {
    super.initState();
    passwordVisible = true;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      obscureText: passwordVisible,
      validator: widget.validator,
      controller: widget.mycontroller,
      decoration: InputDecoration(
          suffixIcon: IconButton(
            icon:
                Icon(passwordVisible ? Icons.visibility : Icons.visibility_off),
            onPressed: () {
              setState(
                () {
                  passwordVisible = !passwordVisible;
                },
              );
            },
          ),
          alignLabelWithHint: false,
          filled: true,
          hintText: widget.hinttext,
          hintStyle: TextStyle(fontSize: 14, color: Colors.grey),
          contentPadding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
          fillColor: Colors.grey[200],
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide:
                  BorderSide(color: const Color.fromARGB(255, 184, 184, 184))),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(50),
              borderSide: BorderSide(color: Colors.grey))),
    );
  }
}
