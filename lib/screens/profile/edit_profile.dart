import 'package:bloc_todos_app/utilities/constants.dart';
import 'package:flutter/material.dart';

import '../../widgets/custom_text_field.dart';

class EditProfile extends StatefulWidget {
  const EditProfile({super.key});

  @override
  State<EditProfile> createState() => _EditProfileState();
}

class _EditProfileState extends State<EditProfile> {
  late final TextEditingController _fullNameController;
  late final TextEditingController _phoneController;
  late final TextEditingController _genderController;
  late final TextEditingController _emailController;
  late final TextEditingController _addressController;
  late final TextEditingController _usernameController;
  late final GlobalKey<FormState> _formKey; // declare form key

  @override
  void initState() {
    _fullNameController = TextEditingController();
    _phoneController = TextEditingController();
    _genderController = TextEditingController();
    _emailController = TextEditingController();
    _addressController = TextEditingController();
    _usernameController = TextEditingController();
    _formKey = GlobalKey<FormState>();
    super.initState();
  }

  @override
  void dispose() {
    _fullNameController.dispose();
    _phoneController.dispose();
    _genderController.dispose();
    _emailController.dispose();
    _addressController.dispose();
    _usernameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: BackButton(
          color: Colors.white,
          onPressed: () {
            Navigator.pushNamed(context, '/profile');
          },
        ),
        title: Text(
          'Edit Profile',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: primaryColor,
      ),
      body: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10.0),
              child: Column(
                children: [
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: _fullNameController,
                    hintText: 'Full Name',
                    labelText: 'Enter Your Full Name',
                    prefixIcon: Icon(Icons.person),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Full Name is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: _phoneController,
                    hintText: 'Phone',
                    labelText: 'Enter Your Phone',
                    prefixIcon: Icon(Icons.phone),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Phone is required';
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
                    // value: _genderController?.text,
                    items: [
                      DropdownMenuItem(value: 'Female', child: Text('Female')),
                      DropdownMenuItem(value: 'Male', child: Text('Male')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _genderController?.text = value.toString();
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
                    labelText: 'Enter Your Email',
                    prefixIcon: Icon(Icons.email),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Email is required';
                      }
                      // email validation
                      if (!RegExp(
                              r'^.+@[a-zA-Z]+\.{1}[a-zA-Z]+(\.{0,1}[a-zA-Z]+)$')
                          .hasMatch(value)) {
                        return 'Please enter a valid email address';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: _addressController,
                    hintText: 'Address',
                    labelText: 'Enter Your Address',
                    prefixIcon: Icon(Icons.home),
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Address is required';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 10),
                  CustomTextField(
                    controller: _usernameController,
                    hintText: 'Username',
                    labelText: 'Enter Your Username',
                    prefixIcon: Icon(Icons.person),
                    isReadOnly: true,
                    validator: (value) {
                      if (value!.isEmpty) {
                        return 'Username is required';
                      }
                      if (value.length < 4) {
                        return 'Username must be at least 8 characters';
                      }
                      // space and symbol are not allowed in username
                      if (value.contains(' ') ||
                          value.contains('@') ||
                          value.contains('.')) {
                        return 'Username must not contain space, dot and symbol';
                      }
                      return null;
                    },
                  ),
                  SizedBox(height: 20),
                  SizedBox(
                    width: double.infinity,
                    height: 45,
                    child: ElevatedButton.icon(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, '/profile');
                      },
                      icon: Icon(Icons.update),
                      label: Text('Update'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
