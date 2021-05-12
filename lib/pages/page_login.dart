import 'package:flutter/material.dart';
import 'package:flutter_firebase/pages/signup.dart';
import 'package:flutter_firebase/utils/advert_manager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class PageLogin extends StatefulWidget {
  const PageLogin({Key key}) : super(key: key);

  @override
  _PageLoginState createState() => _PageLoginState();
}

class _PageLoginState extends State<PageLogin> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Login mail/mdp"),
      ),
      body: Column(
        children: [
          ElevatedButton.icon(
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){
                  return PageSignup();
                }));
              },
              icon: Icon(Icons.mail),
            label: Text("Créer un compte avec une adresse mail"),
          ),
          ElevatedButton.icon(
            onPressed: (){
              //Todo
            },
            icon: Icon(Icons.mail),
            label: Text("Se connecter avec un compte mail"),
          ),
        ]
      ),

    );
  }



}
