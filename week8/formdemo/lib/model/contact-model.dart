class ContactModel {
  String id;
  String userName;
  String userEmail;
  String userPhone;
  DateTime dob;
  ContactModel({
    this.id,
    this.userName,
    this.userEmail,
    this.userPhone,
    this.dob,
  });
}

typedef AddContact = void Function(ContactModel);
typedef DeleteContact = bool Function(String);
