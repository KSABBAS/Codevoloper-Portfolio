class ContactClass {
  static Map _contact = {};
  static setContacts(Map contactList) {
    _contact = contactList;
  }

  static getContactLink(String name) {
    return _contact[name];
  }
}
