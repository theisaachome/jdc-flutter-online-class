class ContactModel {
  int id;
  String name;
  String username;
  String email;
  Address address;

  ContactModel({
    this.id,
    this.name,
    this.username,
    this.email,
    this.address,
  });
  factory ContactModel.fromJson(Map<String, dynamic> json) {
    return ContactModel(
      id: json["id"],
      name: json['name'],
      username: json["username"],
      email: json["email"],
      address: Address.fromJson(json['address']),
    );
  }
}

class Address {
  String street;
  String suite;
  String city;
  String zipcode;
  Address({
    this.street,
    this.suite,
    this.city,
    this.zipcode,
  });
  factory Address.fromJson(Map<String, dynamic> json) {
    return Address(
      street: json["street"],
      suite: json['suite'],
      city: json["city"],
      zipcode: json['zipcode'],
    );
  }
}
