part of 'models.dart';

class User extends Equatable {
  final String token;
  final String name;
  final String username;
  final String email;
  final String password;
  final String dateOfBirth;
  final String image;

  User({
    this.token = '',
    this.name = '',
    this.username = '',
    this.email = '',
    this.password = '',
    this.dateOfBirth = '',
    this.image = '',
  });

  factory User.fromJson(Map<String, dynamic> data) => User(
        name: data['name'],
        username: data['username'],
        email: data['email'],
        dateOfBirth: data['date_of_birth'],
        image: data['image'],
      );

  User copyWith({
    name = '',
    username = '',
    email = '',
    password = '',
    dateOfBirth = '',
    image = '',
  }) =>
      User(
        name: name ?? this.name,
        username: username ?? this.username,
        email: email ?? this.email,
        dateOfBirth: dateOfBirth ?? this.dateOfBirth,
        image: image ?? this.image,
      );

  @override
  List<Object?> get props => [name, username, email, dateOfBirth, image];
}
