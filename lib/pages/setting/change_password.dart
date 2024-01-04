import 'package:flutter/material.dart';

import '../../constants/constants.dart';
import '../../widgets/custom_text_field.dart';

class ChangePassword extends StatelessWidget {
  const ChangePassword({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back_ios,
            color: whiteColor,
          ),
        ),
        title: Center(
          child: const Text(
            'Change Password',
            style: TextStyle(color: whiteColor),
          ),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Center(
          child: SizedBox(
            width: MediaQuery.of(context).size.width * 0.95,
            child: Column(
              children: [
                SizedBox(
                  height: 25,
                ),
                Image.asset(
                  'assets/logo/logo.png',
                  width: 200,
                  height: 200,
                ),
                SizedBox(height: 25),
                CustomTextField(
                  hintText: 'Old Password',
                  labelText: 'Enter Your Old Password',
                  prefixIcon: Icon(Icons.password_rounded),
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'Username is required';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  hintText: 'New Password',
                  labelText: 'Enter Your New Password',
                  prefixIcon: Icon(Icons.password),
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'New Password is required';
                    }
                    if (value.length < 8) {
                      return 'New Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 10),
                CustomTextField(
                  hintText: 'Confirm Password',
                  labelText: 'Enter Your Confirm Password',
                  prefixIcon: Icon(Icons.password),
                  isPassword: true,
                  validator: (value) {
                    if (value!.isEmpty) {
                      return 'New Confirm Password is required';
                    }
                    if (value.length < 8) {
                      return 'New Confirm Password must be at least 8 characters';
                    }
                    return null;
                  },
                ),
                SizedBox(height: 15),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: primaryColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    icon: Icon(
                      Icons.save,
                      color: whiteColor,
                    ),
                    label: Text(
                      'Change Password',
                      style: TextStyle(
                        color: whiteColor,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
