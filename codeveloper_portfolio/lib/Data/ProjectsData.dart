import 'package:codeveloper_portfolio/Data/Databse_Service.dart';

class ProjectClass {
  static List<List<dynamic>> _projects = [];

  static Future<void> fetchProjects() async {
    final db = DatabaseService();
    _projects = await db.fetchProjects();
  }

  static List<List<dynamic>> getProjectsData() => _projects;
}