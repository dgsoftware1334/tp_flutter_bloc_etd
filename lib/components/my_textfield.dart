import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
  final String hinttext;
  final Icon myIcon;
  final TextEditingController myController;
  final String? Function(String?)? myValidator;
  final bool isObscure;
  const MyTextField({
    super.key,
    required this.hinttext,
    required this.myController,
    this.myValidator,
    required this.myIcon,
    required this.isObscure,
  });

  @override
  Widget build(Object context) {
    return TextFormField(
      enabled: true,
      enableInteractiveSelection: true,
      validator: myValidator, //ça existe uniquement dans le TextFormField
      // un FormField qui contient un TextField
      // un FormField un widget qui maintien le state courant d'un formField
      // If you are making a Form where you require save, reset, or validate
      // operations => use TextFormField.
      // Else For Simple user input capture TextField is sufficient.

      controller: myController,
      obscureText: isObscure,
      decoration: InputDecoration(
        hintText: hinttext,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
        ),
        filled: true,
        prefixIcon: myIcon,
      ),
    );

    ////////////////////
  }
}

// Password, Username (icon Person), Email (icon email), Password (icon lock + textobscure true), Confirm Password
