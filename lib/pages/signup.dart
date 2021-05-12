import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

class PageSignup extends StatefulWidget {
  PageSignup({Key key}) : super(key: key);

  @override
  _PageSignupState createState() => _PageSignupState();
}

class _PageSignupState extends State<PageSignup> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passController = TextEditingController();

  FirebaseAuth firebaseAuth;

  @override
  void initState() {
    firebaseAuth = FirebaseAuth.instance;
    super.initState();
  }

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
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                controller: mailController,
                decoration: InputDecoration(
                    labelText: "Email"
                ),
                validator: (value){
                  return null;
                },
              ),
              TextFormField(
                obscureText: true,
                controller: passController,
                decoration: InputDecoration(
                    labelText: "Mot de passe"
                ),
                validator: (value){
                  if(value.length < 5){
                    return "Mettre 5 caractères";
                  }
                  return null;
                },
              ),
              ElevatedButton(
                  onPressed: (){
                    if(_formKey.currentState.validate()){
                      //Todo Register
                    }
                  },
                  child: Text("Valider")
              ),
            ],
          ),
        ),
      ),
    );
  }

  void registerToFb(){


  }



}
