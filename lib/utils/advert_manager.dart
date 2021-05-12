
import 'dart:io';

class AdvertManager{

  //Récupération de l'ID applicatif dans AdMob
  String getAppId(){
    if(Platform.isIOS){
      return "ca-app-pub-7820557864534882~7472540926";
    }else if(Platform.isAndroid){
      return "ca-app-pub-7820557864534882~7472540926";
    }
    return null;
  }


  String getBannerAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/2934735716';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/6300978111';
    }
    return null;
  }

  String getInterstitialAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/8691691433';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/8691691433';
    }
    return null;
  }

  String getRewardBasedVideoAdUnitId() {
    if (Platform.isIOS) {
      return 'ca-app-pub-3940256099942544/1712485313';
    } else if (Platform.isAndroid) {
      return 'ca-app-pub-3940256099942544/5224354917';
    }
    return null;
  }

}