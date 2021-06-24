import 'package:flutter/material.dart';

class Email extends StatefulWidget {
  const Email({Key? key}) : super(key: key);

  @override
  _EmailState createState() => _EmailState();
}

class _EmailState extends State<Email> {
  final emailController = TextEditingController();
  @override
  void initState() {
    super.initState();
    emailController.addListener(() {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'can\'t be empty';
        }
      },
      controller: emailController,
      decoration: InputDecoration(
        hintText: 'emailEXAMPLE@email.com',
        labelText: 'E-Mail',
        prefixIcon: Icon(Icons.email),
        suffixIcon: emailController.text.isEmpty
            ? Container(
                width: 0,
              )
            : IconButton(
                onPressed: () {
                  emailController.clear();
                },
                icon: Icon(Icons.close),
              ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
      keyboardType: TextInputType.emailAddress,
      textInputAction: TextInputAction.next,
    );
  }
}
