import 'package:flutter/material.dart';

class CustomFilledButton extends StatelessWidget {
  const CustomFilledButton(
      {super.key, required this.buttonText, required this.onPressed});
  final String buttonText;
  final VoidCallback onPressed;
  

  @override
  Widget build(BuildContext context) {

    double mainWidth=MediaQuery.of(context).size.width;
    double width=(mainWidth>400)? 350:mainWidth-50;

    return Container(
      margin: const EdgeInsets.symmetric(vertical: 10),
      width: width,
      height: 60,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.deepOrange.shade600,
        ).copyWith(
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10.0),
              side: BorderSide(color: Colors.red.shade600, width: 2.0),
            ),
          ),
        ),
        child: Text(
          buttonText,
          style: const TextStyle(color: Colors.white),
        ),

        
      ),
    );
  }
}
