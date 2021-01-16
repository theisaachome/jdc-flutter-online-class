class Contact {
  int id;
  String name;
  String phone;
  String email;
  String imageUrl;

  Contact({this.id, this.name, this.phone, this.email, this.imageUrl});
}

class ContactApi {
  static List<Contact> getContact() => [
        Contact(
            id: 1,
            name: "Aung Aung",
            phone: "0989876767",
            email: "aungaung@gmail.com",
            imageUrl:
                "https://images.unsplash.com/photo-1590556409324-aa1d726e5c3c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"),
        Contact(
            id: 2,
            name: "Maung Maung Tun",
            phone: "0989876767",
            email: "maungmaungtun@gmail.com",
            imageUrl:
                "https://images.unsplash.com/photo-1590556409324-aa1d726e5c3c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"),
        Contact(
            id: 3,
            name: "Kyaw Kyaw Aung",
            phone: "0989876767",
            email: "kyawkyaw@gmail.com",
            imageUrl:
                "https://images.unsplash.com/photo-1590556409324-aa1d726e5c3c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"),
        Contact(
            id: 4,
            name: "Kaung si Thu ",
            phone: "0989876767",
            email: "kaungsithu@gmail.com",
            imageUrl:
                "https://images.unsplash.com/photo-1590556409324-aa1d726e5c3c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"),
        Contact(
            id: 5,
            name: "Maw Maw",
            phone: "0989876767",
            email: "mawmaw@gmail.com",
            imageUrl:
                "https://images.unsplash.com/photo-1590556409324-aa1d726e5c3c?ixid=MXwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHw%3D&ixlib=rb-1.2.1&auto=format&fit=crop&w=668&q=80"),
      ];
}
