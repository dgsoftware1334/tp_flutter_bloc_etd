import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:tp_flutter_bloc_etd/components/my_button.dart';
import 'package:tp_flutter_bloc_etd/components/my_textfield.dart';
import 'package:tp_flutter_bloc_etd/helpers/route.dart';
import 'package:tp_flutter_bloc_etd/helpers/validators.dart';

class SignupPage extends StatelessWidget {
  const SignupPage({super.key});

  @override
  Widget build(BuildContext context) {
    TextEditingController userController = TextEditingController();
    TextEditingController pwdController = TextEditingController();
    TextEditingController pwdController2 = TextEditingController();
    TextEditingController emailController = TextEditingController();

    final emailPatternRules =
        r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";
    final passwordPatternRules = r'^(?=.*[A-Z])(?=.*?[0-9])';

    final confPasswordRules = r'${pwdController==pwdController2}';

    GlobalKey<FormState> keyFormState = GlobalKey<FormState>();

    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 40),
          child: Form(
            key: keyFormState,
            child: Column(
              children: <Widget>[
                const SizedBox(height: 60.0),
                const Text(
                  "Sign up",
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Create your account",
                  style: TextStyle(fontSize: 15, color: Colors.grey[700]),
                ),
                const SizedBox(
                  height: 30,
                ),
                // TextField Username
                MyTextField(
                  hinttext: "Username",
                  myController: userController,
                  myIcon: const Icon(Icons.person),
                  isObscure: false,
                  myValidator: (value) => myValidator(
                    isRequired: true,
                    fieldName: "Meal name",
                    value: value,
                    rules: '',
                    alertMessage: '',
                  ),
                ),
                const SizedBox(height: 20),
                // Textfield email
                MyTextField(
                  hinttext: "Email",
                  myController: emailController,
                  myIcon: const Icon(Icons.email),
                  isObscure: false,
                  myValidator: (value) => myValidator(
                    isRequired: true,
                    fieldName: "Meal name",
                    value: value,
                    rules: emailPatternRules,
                    alertMessage: '${emailPatternRules}',
                  ),
                ),

                const SizedBox(height: 20),
                // Textfield password
                MyTextField(
                  hinttext: "Password",
                  myController: pwdController,
                  myIcon: const Icon(Icons.lock),
                  isObscure: true,
                  myValidator: (value) => myValidator(
                    isRequired: true,
                    fieldName: "Meal name",
                    value: value,
                    rules: passwordPatternRules,
                    alertMessage: '${passwordPatternRules}',
                  ),
                ),

                const SizedBox(height: 20),
                // Textfield confirm password
                MyTextField(
                    hinttext: "Confirm Password",
                    myController: pwdController2,
                    myIcon: const Icon(Icons.lock),
                    isObscure: true),
                const SizedBox(height: 20),
                // signup button
                MyButton(
                  butLabel: "Sign up",
                  onePressed: () {
                    if (keyFormState.currentState!.validate()) {
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

                    //
                    Navigator.pushNamed(
                      context,
                      InternalRoute.getRouteLogin(),
                    );
                  },
                ),
                const SizedBox(
                  height: 20,
                ),
                const Center(child: Text("Or")),
                const SizedBox(
                  height: 20,
                ),
                MyButton(
                  butLabel: "Sign in with Google",
                  onePressed: () {},
                ),
                const SizedBox(
                  height: 30,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text("Already have an account?"),
                    // TextButon login
                    MyTextButton(
                      butLabel: "login",
                      onePressed: () {
                        //
                        Navigator.pushNamed(
                          context,
                          InternalRoute.getRouteLogin(),
                        );
                      },
                    ),
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
