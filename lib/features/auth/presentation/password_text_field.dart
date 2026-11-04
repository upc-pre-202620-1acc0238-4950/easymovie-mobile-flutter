import 'package:flutter/material.dart';

class PasswordTextField extends StatefulWidget {
  const new({super.key, this.controller});
  final TextEditingController? controller; 

  @override
  State<PasswordTextField> createState() => _PasswordTextFieldState();
}

class _PasswordTextFieldState extends State<PasswordTextField> {
  bool isHidden = true;
  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: widget.controller,
      obscureText: isHidden,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        hint: Text("Password"),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isHidden = !isHidden;
            });
          },
          icon: Icon(isHidden ? Icons.visibility_off : Icons.visibility),
        ),
      ),
    );
  }
}
