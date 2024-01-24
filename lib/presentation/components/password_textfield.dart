import 'package:flutter/material.dart';

class CustomPasswordField extends StatefulWidget {
  const CustomPasswordField({super.key, required this.controller});
  final TextEditingController controller;

  @override
  State<CustomPasswordField> createState() => _CustomPasswordFieldState();
}

class _CustomPasswordFieldState extends State<CustomPasswordField> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    double mainWidth = MediaQuery.of(context).size.width;
    double width = (mainWidth > 400) ? 350 : mainWidth - 50;
    return Container(
      margin: const EdgeInsets.only(top: 10, bottom: 10),
      width: width,
      child: TextField(
        controller: widget.controller,
        obscureText: !isVisible,
        decoration: InputDecoration(
          hintText: 'Password',
          filled: true,
          fillColor: Colors.red.shade50,
          hintStyle: TextStyle(color: Colors.grey.shade500),
          contentPadding: const EdgeInsets.all(20),
          focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(width: 2, color: Colors.red.shade600)),
          enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide(
                width: 2,
                color: Colors.red.shade50,
              )),
          suffixIcon: Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: IconButton(
              onPressed: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              icon: isVisible
                  ? Icon(
                      Icons.visibility_off,
                      color: Colors.red.shade300,
                    )
                  : Icon(
                      Icons.visibility,
                      color: Colors.red.shade600,
                    ),
            ),
          ),
        ),
      ),
    );
  }
}
