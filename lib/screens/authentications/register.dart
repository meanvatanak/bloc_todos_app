import 'package:flutter/material.dart';

import '../../utilities/constants.dart';
import '../../widgets/custom_text_field.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  late final TextEditingController _fullNameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _genderController;
  late final TextEditingController _emailController;
  late final TextEditingController _addressController;
  late final TextEditingController _usernameController;
  late final TextEditingController _passwordController;
  late final TextEditingController _passwordConfirmationController;
  late final GlobalKey<FormState> _formKey;

  @override
  void initState() {
    _fullNameController = TextEditingController();
    _phoneController = TextEditingController();
    _genderController = TextEditingController();
    _emailController = TextEditingController();
    _addressController = TextEditingController();
    _usernameController = TextEditingController();
    _passwordController = TextEditingController();
    _passwordConfirmationController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          onPressed: () {
            Navigator.pushNamedAndRemoveUntil(
                context, '/login', (route) => false);
          },
        ),
        backgroundColor: primaryColor,
        title: Text(
          'Register Form',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomTextField(
                controller: _fullNameController,
                hintText: 'Full Name',
                labelText: 'Full Name',
                prefixIcon: Icon(Icons.person),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your full name';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                controller: _phoneController,
                hintText: 'Phone',
                labelText: 'Phone',
                prefixIcon: Icon(Icons.phone),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your phone';
                  }
                  // allow only number
                  if (!RegExp(r"^[0-9]*$").hasMatch(value)) {
                    return 'Phone must be number';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              DropdownButtonFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  labelText: 'Gender',
                  hintText: 'Select your Gender',
                  prefixIcon: Icon(Icons.person),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.green,
                      width: 2.0,
                    ),
                  ),
                ),
                value: _genderController.text.isEmpty
                    ? null
                    : _genderController.text,
                items: [
                  DropdownMenuItem(value: 'Female', child: Text('Female')),
                  DropdownMenuItem(value: 'Male', child: Text('Male')),
                ],
                onChanged: (value) {
                  setState(() {
                    _genderController.text = value.toString();
                  });
                },
                validator: (value) {
                  if (value == null) {
                    return 'Please select an item';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                controller: _emailController,
                hintText: 'Email',
                labelText: 'Email',
                prefixIcon: Icon(Icons.email),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your email';
                  }
                  if (!RegExp(r"^[a-zA-Z0-9+_.-]+@[a-zA-Z0-9.-]+$")
                      .hasMatch(value)) {
                    return 'Please enter valid email';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                controller: _addressController,
                hintText: 'Address',
                labelText: 'Address',
                prefixIcon: Icon(Icons.home),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your address';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                controller: _usernameController,
                hintText: 'Username',
                labelText: 'Username',
                prefixIcon: Icon(Icons.person),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your username';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                controller: _passwordController,
                hintText: 'Password',
                labelText: 'Password',
                prefixIcon: Icon(Icons.password),
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password';
                  }
                  if (value.length < 8) {
                    return 'Password must be at least 8 characters';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              CustomTextField(
                controller: _passwordConfirmationController,
                hintText: 'Password Confirmation',
                labelText: 'Password Confirmation',
                prefixIcon: Icon(Icons.password),
                isPassword: true,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter your password confirmation';
                  }
                  if (value.length < 8) {
                    return 'Password confirmation must be at least 8 characters';
                  }
                  return null;
                },
              ),
              SizedBox(height: 10),
              SizedBox(
                width: double.infinity,
                height: 45,
                child: ElevatedButton.icon(
                  onPressed: () {
                    Navigator.pushNamed(context, '/home');
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
                    'Register',
                    style: TextStyle(color: whiteColor),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
