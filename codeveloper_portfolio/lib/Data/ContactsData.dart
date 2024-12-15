import 'package:codeveloper_portfolio/Data/Databse_Service.dart';

class ContactClass {
  static Map<String, String> _contacts = {};

  static Future<void> fetchContacts() async {
    final db = DatabaseService();
    _contacts = await db.fetchContacts();
  }

  static String? getContactLink(String platform) => _contacts[platform];
}