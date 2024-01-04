import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/custom_text_field.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/logo/logo.png',
              width: 200,
              height: 200,
            ),
            SizedBox(height: 25),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextField(
                hintText: 'Username',
                labelText: 'Enter Your Username',
                prefixIcon: Icon(Icons.person),
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Username is required';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: CustomTextField(
                hintText: 'Password',
                labelText: 'Enter Your Password',
                prefixIcon: Icon(Icons.password),
                isPassword: true,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Password is required';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 15),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 18.0),
              child: SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushReplacementNamed(context, '/homepage');
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: primaryColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  icon: Icon(
                    Icons.login,
                    color: whiteColor,
                  ),
                  label: Text(
                    'Login',
                    style: TextStyle(
                      color: whiteColor,
                    ),
                  ),
                ),
              ),
            ),
            SizedBox(height: 5),
            TextButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, '/register', (route) => false);
              },
              child: Text(
                'Register Now!',
                style: TextStyle(
                  fontSize: 18,
                  color: primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
