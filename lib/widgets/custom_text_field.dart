import 'package:flutter/material.dart';

class CustomTextField extends StatefulWidget {
  const CustomTextField({
    Key? key,
    this.controller,
    this.labelText,
    this.hintText,
    this.prefixIcon,
    this.isPassword = false,
    this.isReadOnly = false,
    this.maxLines,
    this.validator,
    this.borderColor,
  }) : super(key: key);

  final TextEditingController? controller;
  final String? labelText;
  final String? hintText;
  final Icon? prefixIcon;
  final bool isPassword;
  final bool isReadOnly;
  final int? maxLines;
  final Color? borderColor;

  final String? Function(String?)? validator;

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  late bool _hidePassword;

  @override
  void initState() {
    super.initState();
    _hidePassword = widget.isPassword;
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: widget.controller,
      // obscureText: widget.isPassword ? true : false,
      obscureText: _hidePassword,
      readOnly: widget.isReadOnly,
      maxLines: widget.maxLines ?? 1,
      decoration: InputDecoration(
        filled: widget.isReadOnly ? true : false,
        fillColor: Colors.grey[400],
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
        ),
        labelText: widget.labelText,
        hintText: widget.labelText,
        // prefixIcon: Icon(Icons.password),
        prefixIcon: widget.prefixIcon,
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
            color: widget.borderColor ?? Colors.green!,
            width: 2.0,
          ),
        ),
        suffixIcon: widget.isPassword
            ? IconButton(
                onPressed: () {
                  setState(() {
                    _hidePassword = !_hidePassword;
                  });
                },
                icon: Icon(
                  _hidePassword ? Icons.visibility : Icons.visibility_off,
                ),
              )
            : null,
      ),
      validator: widget.validator,
    );
  }
}
