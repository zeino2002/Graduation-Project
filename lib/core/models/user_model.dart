class UserModel {
  final String id;
  final String name;
  final String email;
  final String image;
  final String phone;
  final String address;

  UserModel( {
    required this.id,
    required this.name,
    required this.email,
    required this.image,
    required this.address,
    required this.phone,
  });

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      id: map['id'],
      name: map['name'],
      email: map['email'],
      image: map['image'],
      address:  map['address'],
      phone:  map['phone'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'image': image,
      'phone': phone,
      'address':address
    };
  }

}