import 'dart:io';

class UserModel {
  final String name;
  final String email;
  final String phone;
  final String about;
  final File profileImage;
  final List<String> enrolledCourses;

  UserModel({
    required this.name,
    required this.email,
    required this.phone,
    required this.about,
    required this.profileImage,
    required this.enrolledCourses,
  });
}
