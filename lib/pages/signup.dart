import 'package:flutter/material.dart';

class PageSignup extends StatefulWidget {
  PageSignup({Key key}) : super(key: key);

  @override
  _PageSignupState createState() => _PageSignupState();
}

class _PageSignupState extends State<PageSignup> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Creation de compte avec adresse mail"),
      ),
      body: Form(
        key: _formKey,
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextFormField(
                controller: nameController,
                decoration: InputDecoration(
                  labelText: "Username"
                ),
                validator: (value){
                  return null;
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
