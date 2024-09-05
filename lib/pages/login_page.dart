import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:modern_login_ui/widgets/my_button.dart';
import 'package:modern_login_ui/widgets/my_textfield.dart';
import 'package:modern_login_ui/widgets/square_tile.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final userNameController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(
                height: 50,
              ),
              //logo
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(
                height: 50,
              ),
              // welcom back
              Text(
                "Welcom back you\'ve been missed",
                style: TextStyle(color: Colors.grey[700], fontSize: 16),
              ),
              const SizedBox(
                height: 25,
              ),
              //username
              MyTextField(
                controller: userNameController,
                hintText: "Username",
                obscureText: false,
              ),

              const SizedBox(
                height: 10,
              ),
              //password
              MyTextField(
                controller: passwordController,
                hintText: "Password",
                obscureText: true,
              ),
              //forget
              const SizedBox(
                height: 10,
              ),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      "Forget Password?",
                      style: TextStyle(color: Colors.grey[600]),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 25,
              ),
              //sign in
              MyButton(
                onTap: () {},
              ),
              const SizedBox(
                height: 50,
              ),
              //or continue
              Row(
                children: [
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      "Or Continue with",
                      style: TextStyle(color: Colors.grey[700]),
                    ),
                  ),
                  Expanded(
                    child: Divider(
                      thickness: 0.5,
                      color: Colors.grey[400],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              //google + apple sign in
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SquareTile(
                    imagePath: 'assets/images/google_logo.png',
                  ),
                  const SizedBox(
                    width: 25,
                  ),
                  SquareTile(
                    imagePath: 'assets/images/apple_logo.png',
                  ),
                ],
              ),
              // not a member
              const SizedBox(
                height: 25,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Not a member?",style: TextStyle( color: Colors.grey[700]),
                  ),
                  const SizedBox(
                    width: 4,
                  ),
                  Text(
                    "Register Now",
                    style: TextStyle(
                        color: Colors.blue, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
