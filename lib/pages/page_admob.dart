import 'package:flutter/material.dart';
import 'package:flutter_firebase/utils/advert_manager.dart';
import 'package:google_mobile_ads/google_mobile_ads.dart';

class PageAdMob extends StatefulWidget {
  const PageAdMob({Key key}) : super(key: key);

  @override
  _PageAdMobState createState() => _PageAdMobState();
}

class _PageAdMobState extends State<PageAdMob> {

  final InterstitialAd myInterstitial = InterstitialAd(
    adUnitId: AdvertManager().getInterstitialAdUnitId(),
    request: AdRequest(testDevices: ["D23E0B82B6F54FCC5DDB8F935C2D07AE"]),
    listener:  AdListener(
      // Called when an ad is successfully received.
      onAdLoaded: (Ad ad) => print('Ad loaded.'),
      // Called when an ad request failed.
      onAdFailedToLoad: (Ad ad, LoadAdError error) {
        //ad.dispose();
        print('Ad failed to load: $error');
      },
      // Called when an ad opens an overlay that covers the screen.
      onAdOpened: (Ad ad) => print('Ad opened.'),
      // Called when an ad removes an overlay that covers the screen.
      onAdClosed: (Ad ad) {
        //ad.dispose();
        print('Ad closed.');
      },
      // Called when an ad is in the process of leaving the application.
      onApplicationExit: (Ad ad) => print('Left application.'),
    ),
  );


  @override
  void initState() {
    myInterstitial.load();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Publicité"),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              myInterstitial.show();
            },
            child: Text("Lancer la pub"),
          ),
          ElevatedButton(
            onPressed: () {
              myInterstitial.load();
            },
            child: Text("Load la pub"),
          ),
        ]
      ),

    );
  }



}
