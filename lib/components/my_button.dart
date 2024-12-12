import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  final String butLabel;
  //final IconData butIcon;
  final Function() onePressed;

  const MyButton({
    super.key,
    required this.butLabel,
    // required this.butIcon,
    required this.onePressed,
  });

  @override
  Widget build(Object context) {
    return SizedBox(
      height: 50,
      width: 330,
      child: ElevatedButton(
        onPressed: () {
          print("save");
          onePressed();
        },
        style: ElevatedButton.styleFrom(
          backgroundColor: Colors.orange,
          foregroundColor: Colors.black, //background color of button
          side: const BorderSide(
              width: 1, color: Colors.black), //border width and color
          shape: RoundedRectangleBorder(
              //to set border radius to button
              borderRadius: BorderRadius.circular(15)),
          padding: const EdgeInsets.all(5), //content padding inside button
          textStyle: const TextStyle(
            fontSize: 20,
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
          ),
        ),
        child: Text(
          butLabel,
          style: TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
///////////////////////
/// "Forgot password?","Sign Up", "Login",

class MyTextButton extends StatelessWidget {
  final String butLabel;
  final Function() onePressed;

  const MyTextButton(
      {super.key, required this.butLabel, required this.onePressed});

  @override
  Widget build(Object context) {
    return TextButton(
      onPressed: onePressed,
      child: Text(
        butLabel,
        style: const TextStyle(color: Colors.blue),
      ),
    );
  }
}
