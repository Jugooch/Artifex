import 'package:artifex/styling.dart';
import 'package:artifex/widgets/pages/home.dart';
import 'package:artifex/widgets/pages/signup.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.background,
      body: SafeArea( // Use SafeArea to avoid overlap with status bar and notch
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              // Top Section
              Column(children: [
                // Logo
                Image.asset("assets/images/logo.png", height: 100),
                SizedBox(height: 32),
                Text('Welcome!', style: AppStyles.header1),
                SizedBox(height: 16),
                Text('Log into your existing Artifex account',
                    style: AppStyles.paragraph),
              ]),

              // Middle Section
              Column(children: [
                // Username input
                TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.email, color: AppColors.background),
                      labelText: 'Username',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      labelStyle: AppStyles.input,
                      fillColor: Colors.white,
                      filled: true),
                ),
                SizedBox(height: 16),

                // Password input
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.password, color: AppColors.background),
                      labelText: 'Password',
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                      labelStyle: AppStyles.input,
                      fillColor: Colors.white,
                      filled: true),
                ),
                SizedBox(height: 16),

                // Forgot Password
                TextButton(
                  onPressed: () {},
                  child: Text('Forgot Password?', style: AppStyles.paragraph),
                ),
                SizedBox(height: 32),

                // Sign in button
                ElevatedButton(
                    onPressed: () {
                      Navigator.pushReplacement(context,
                          MaterialPageRoute(builder: (context) => HomePage()));
                    },
                    style: ButtonStyle(
                        backgroundColor:
                            MaterialStateProperty.all(AppColors.primary)),
                    child: Container(
                        padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                        child: Text('Sign In', style: AppStyles.header1))),
                SizedBox(height: 16),
              ]),

              // Bottom Section
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text('Don’t have an account?', style: AppStyles.paragraph),
                  TextButton(
                    onPressed: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignupPage()));
                    },
                    child: Text('Sign up Now!', style: AppStyles.textBtn),
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
