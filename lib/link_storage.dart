import 'package:shared_preferences/shared_preferences.dart';

class LinkStorage{
  static late SharedPreferences _prefs;
  static const _key = 'scanned_links';

  static Future<void> init() async{
    _prefs = await SharedPreferences.getInstance();
  }

  static List<String> getLinks(){
    return _prefs.getStringList(_key) ?? [];
  }

  static Future<void> addLink(String link) async{
    final links = getLinks();
    if (!links.contains(link)){
      links.add(link);
      await _prefs.setStringList(_key, links);
    }
  }
}