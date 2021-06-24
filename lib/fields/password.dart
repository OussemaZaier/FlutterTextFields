import 'package:flutter/material.dart';

class Password extends StatefulWidget {
  const Password({Key? key}) : super(key: key);

  @override
  _PasswordState createState() => _PasswordState();
}

class _PasswordState extends State<Password> {
  final passwordController = TextEditingController();
  bool visible = false;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: passwordController,
      obscureText: !visible,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        hintText: '******',
        labelText: 'password',
        prefixIcon: Icon(Icons.lock),
        suffixIcon: visible
            ? IconButton(
                onPressed: () {
                  setState(() {
                    visible = false;
                  });
                },
                icon: Icon(Icons.visibility))
            : IconButton(
                onPressed: () {
                  setState(() {
                    visible = true;
                  });
                },
                icon: Icon(Icons.visibility_off)),
      ),
    );
  }
}
