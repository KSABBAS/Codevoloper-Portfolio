class MemberClass {
  static List _member = [];

  static  setMembers(List memberList) {
    _member = memberList;
  }
  static List getMemberList(){
    return _member;
  }
}
