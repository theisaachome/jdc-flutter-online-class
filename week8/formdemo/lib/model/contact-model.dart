class ContactModel {
  String id;
  String userName;
  String userEmail;
  String userPhone;
  ContactModel({
    this.id,
    this.userName,
    this.userEmail,
    this.userPhone,
  });
}

typedef AddContact = void Function(ContactModel);
typedef DeleteContact = bool Function(String);
