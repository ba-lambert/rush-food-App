import 'package:flutter/cupertino.dart';
import "package:flutter/material.dart";
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:go_router/go_router.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _formfield = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  bool passwordToggle = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login Form'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20, vertical: 60),
          child: Center(
            child: Form(
              key: _formfield,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipOval(
                    child: Image.asset(
                      "assets/avatar.png",
                      width: 150,
                      height: 150,
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: emailController,
                    style: TextStyle(fontSize: 25),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "Please enter an email";
                      }
                      bool emailValidate =
                          RegExp(r"^[a-zA-Z0-9]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                              .hasMatch(value);
                      if (!emailValidate) {
                        return "please enter valid email";
                      }
                    },
                    decoration: const InputDecoration(
                        labelText: 'email',
                        border: OutlineInputBorder(),
                        prefixIcon: Icon(CupertinoIcons.mail)),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextFormField(
                    keyboardType: TextInputType.emailAddress,
                    controller: passwordController,
                    obscureText: passwordToggle,
                    style: TextStyle(fontSize: 25),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return "please enter password";
                      }
                      bool passwordValidate = RegExp(
                        r'^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9]).{8,}$',
                      ).hasMatch(value);
                      if (!passwordValidate) {
                        return 'password must atleast be 8 characters';
                      }
                    },
                    decoration: InputDecoration(
                      labelText: 'Password',
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(CupertinoIcons.lock),
                      suffixIcon: InkWell(
                        onTap: () {
                          setState(() {
                            passwordToggle = !passwordToggle;
                          });
                        },
                        child: Icon(
                          passwordToggle
                              ? CupertinoIcons.eye
                              : CupertinoIcons.eye_slash,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  InkWell(
                    onTap: () {
                      if (_formfield.currentState!.validate()) {
                        print("succes");
                        emailController.clear();
                        passwordController.clear();
                      }
                    },
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.indigo,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          'Log in',
                          style: TextStyle(
                              fontSize: 24,
                              color: Colors.white,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'do not have an accout',
                        style: TextStyle(fontSize: 18),
                      ),
                      TextButton(
                        onPressed: () {
                          context.go('/signup');
                        },
                        child: const Text(
                          'SignUp',
                          style: TextStyle(fontSize: 18, color: Colors.indigo),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
