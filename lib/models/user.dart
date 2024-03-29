class User {
  final int id;
  final String name;
  final String username;
  final String email;
  final String? profilePhoto;
  final String? phoneNumber;

  User({
    required this.id,
    required this.name,
    required this.username,
    required this.email,
    this.profilePhoto,
    this.phoneNumber,
  });

  factory User.fromMap(Map<String, dynamic> map) {
    return User(
      id: map["id"],
      name: map["name"],
      username: map["username"],
      email: map["email"],
      profilePhoto: map["profile_photo"],
      phoneNumber: map["phone_number"],
    );
  }

  factory User.dummy() {
    return User(
      id: 001,
      name: "Kelompok empat",
      username: "kelompok_kami",
      email: "empat@email.com",
      profilePhoto:
          "https://i.postimg.cc/V6vY6r6M/Whats-App-Image-2023-04-10-at-12-58-17.jpg",
      phoneNumber: "081024012024",
    );
  }
}
