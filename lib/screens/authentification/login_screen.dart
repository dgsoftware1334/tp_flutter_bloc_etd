import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tp_flutter_bloc_etd/components/my_button.dart';
import 'package:tp_flutter_bloc_etd/components/my_textfield.dart';
import 'package:tp_flutter_bloc_etd/helpers/route.dart';
import 'package:tp_flutter_bloc_etd/helpers/validators.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    TextEditingController pwdController =
        TextEditingController(text: "AZIU2366@");
    TextEditingController userController =
        TextEditingController(text: "user115");

    final passwordPatternRules = r'^(?=.*[A-Z])(?=.*?[0-9])';

    GlobalKey<FormState> keyFormState = GlobalKey<FormState>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          margin: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: keyFormState,
            child: Column(
              children: [
                const SizedBox(height: 60.0),
                const Text(
                  "Welcome to MealTLM ",
                  style: TextStyle(
                      fontSize: 40,
                      fontWeight: FontWeight.bold,
                      color: Colors.blueGrey),
                ),
                const SizedBox(height: 10),
                const Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: const CircleAvatar(
                    backgroundImage: AssetImage("assets/images/avatar.jpg"),
                    radius: 100,
                  ),
                ),

                // Textfield username
                MyTextField(
                  hinttext: "Username",
                  myController: userController,
                  myIcon: const Icon(Icons.person),
                  isObscure: false,
                  myValidator: (value) => myValidator(
                    isRequired: true,
                    fieldName: "Username",
                    value: value,
                    rules: '',
                    alertMessage: '',
                  ),
                ),
                const SizedBox(height: 10),
                // Textfield password
                MyTextField(
                  hinttext: "Password",
                  myController: pwdController,
                  myIcon: const Icon(Icons.lock),
                  isObscure: false,
                  myValidator: (value) => myValidator(
                    isRequired: true,
                    fieldName: "Password",
                    value: value,
                    rules: passwordPatternRules,
                    alertMessage: '${passwordPatternRules}',
                  ),
                ),
                const SizedBox(height: 10),
                // Elevated Button
                MyButton(
                  butLabel: "Login",
                  onePressed: () {
                    if (keyFormState.currentState!.validate()) {
                      //
                      //
                      Navigator.pushNamed(
                        context,
                        InternalRoute.getRouteHome(),
                      );
                    } else {
                      Fluttertoast.showToast(
                        msg: "Your entries isn't valide",
                        toastLength: Toast.LENGTH_SHORT,
                        gravity: ToastGravity.CENTER,
                        timeInSecForIosWeb: 1,
                        backgroundColor: Colors.red,
                        textColor: Colors.white,
                        fontSize: 16.0,
                      );
                    }
                  },
                ),
                const SizedBox(height: 50),
                // TextButton Mot de passe oublie
                MyTextButton(
                  butLabel: "Forgot your password ?",
                  onePressed: () {},
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Dont have an account? "),
                    // TextButton signup
                    MyTextButton(
                      butLabel: "signup",
                      onePressed: () {
                        //
                        Navigator.pushNamed(
                          context,
                          InternalRoute.getRouteSignUp(),
                        );
                      },
                    )
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
