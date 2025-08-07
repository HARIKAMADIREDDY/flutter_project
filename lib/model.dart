import 'package:flutter/material.dart';
class ProfileOption {
  final IconData icon;
  final String title;
  final Color color;

  ProfileOption({required this.icon, required this.title,required this.color});
}
final List<ProfileOption> options = [
  ProfileOption(icon: Icons.person, title: 'Create Profile',color: Colors.black),
  ProfileOption(icon: Icons.group, title: 'Add Employee',color: Colors.black),
  ProfileOption(icon: Icons.password, title: 'Change Password',color: Colors.black),
  ProfileOption(icon: Icons.logout, title: 'Sign Out',color: Colors.red),
];
