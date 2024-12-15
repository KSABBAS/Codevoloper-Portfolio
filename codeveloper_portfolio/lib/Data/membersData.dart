import 'package:codeveloper_portfolio/Data/Databse_Service.dart';

class MemberClass {
  static List<List<String>> _members = [];

  static Future<void> fetchMembers() async {
    final db = DatabaseService();
    _members = await db.fetchMembers();
  }

  static List<List<String>> getMemberList() => _members;
}