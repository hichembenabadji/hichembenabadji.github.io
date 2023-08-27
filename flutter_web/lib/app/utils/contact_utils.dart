import 'package:mysite/changes/links.dart';

class ContactUtils {
  final String url;
  final String icon;

  ContactUtils({required this.url, required this.icon});
}

List<ContactUtils> contactUtils = [
  ContactUtils(url: gitHub, icon: "https://img.icons8.com/ios-glyphs/60/000000/github.png"),
  ContactUtils(url: youtube, icon: "https://img.icons8.com/ios-filled/50/000000/youtube-play.png"),
  ContactUtils(url: twitter, icon: "https://img.icons8.com/fluency/48/000000/twitter.png"),
  ContactUtils(url: linkedin, icon: "https://img.icons8.com/ios-filled/50/000000/linkedin.png"),
  ContactUtils(url: instagram, icon: "https://img.icons8.com/glyph-neue/64/000000/instagram-new.png"),
  ContactUtils(url: tiktok, icon: "https://img.icons8.com/?size=64&id=118638&format.png"),
  ContactUtils(url: playstore, icon: "https://img.icons8.com/?size=64&id=100006&format.png"),
];