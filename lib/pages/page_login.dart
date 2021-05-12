import 'package:flutter/material.dart';
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
        children: []
      ),

    );
  }



}
