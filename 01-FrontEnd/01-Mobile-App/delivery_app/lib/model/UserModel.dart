class UserModel {
  int id;
  String name;
  String email;
  String password;

  UserModel({
    this.id,
    this.name,
    this.email,
    this.password,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'name': name,
      'email': email,
      'password': password,
    };
  }

  @override
  String toString() {
    return 'UserModel{id: $id, name: $name, email: $email, password: $password}';
  }
}
