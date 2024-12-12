class ProjectClass {
  static List _project = [];
  static setProjects(List projectList) {
    _project = projectList;
  }
  static List getProjectsData(){
    return _project;
  }
}
