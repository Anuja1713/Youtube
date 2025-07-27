class LoginResponse {
  final String? message;
  final String? token;
  final User? user;

  LoginResponse({this.message, this.token, this.user});

  factory LoginResponse.fromJson(Map<String, dynamic> json) {
    return LoginResponse(
      message: json['message'],
      token: json['token'],
      user: json['user'] != null ? User.fromJson(json['user']) : null,
    );
  }
}

class User {
  final int? id;
  final String? name;
  final String? email;
  final String? role;
  final String? contact;
  final String? address;
  final String? gender;
  final String? createdAt;
  final String? updatedAt;

  User({
    this.id,
    this.name,
    this.email,
    this.role,
    this.contact,
    this.address,
    this.gender,
    this.createdAt,
    this.updatedAt,
  });

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
      id: json['id'],
      name: json['name'],
      email: json['email'],
      role: json['role'],
      contact: json['contact'],
      address: json['address'],
      gender: json['gender'],
      createdAt: json['created_at'],
      updatedAt: json['updated_at'],
    );
  }
}
// 