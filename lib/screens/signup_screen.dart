

// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:image_picker/image_picker.dart';
// import 'home_screen.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final aboutController = TextEditingController();

//   File? profileImage;

//   Future<void> _pickImage() async {
//     final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       setState(() => profileImage = File(pickedImage.path));
//     }
//   }

//   Future<void> _signup() async {
//     final name = nameController.text.trim();
//     final phone = phoneController.text.trim();
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();
//     final about = aboutController.text.trim();

//     if ([name, phone, email, password, about].any((v) => v.isEmpty) || profileImage == null) {
//       _showError("All fields including profile image are required.");
//       return;
//     }

//     try {
//       final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );

//       final uid = userCredential.user!.uid;

//       await FirebaseFirestore.instance.collection('users').doc(uid).set({
//         'name': name,
//         'phone': phone,
//         'email': email,
//         'about': about,
//         'enrolledCourses': [],
//       });

//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => HomeScreen()),
//       );
//     } catch (e) {
//       _showError("Signup failed. Try a different email.");
//     }
//   }

//   void _showError(String msg) {
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: const Text("Error"),
//         content: Text(msg),
//         actions: [
//           TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK"))
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Sign Up")),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               GestureDetector(
//                 onTap: _pickImage,
//                 child: CircleAvatar(
//                   radius: 50,
//                   backgroundImage: profileImage != null ? FileImage(profileImage!) : null,
//                   child: profileImage == null
//                       ? const Icon(Icons.camera_alt, size: 40, color: Colors.white)
//                       : null,
//                 ),
//               ),
//               const SizedBox(height: 36),
//               TextField(controller: nameController, decoration: const InputDecoration(labelText: "Name", prefixIcon: Icon(Icons.person))),
//               TextField(controller: phoneController, keyboardType: TextInputType.phone, decoration: const InputDecoration(labelText: "Phone", prefixIcon: Icon(Icons.phone))),
//               TextField(controller: emailController, keyboardType: TextInputType.emailAddress, decoration: const InputDecoration(labelText: "Email", prefixIcon: Icon(Icons.email))),
//               TextField(controller: passwordController, obscureText: true, decoration: const InputDecoration(labelText: "Password", prefixIcon: Icon(Icons.lock))),
//               TextField(controller: aboutController, maxLines: 3, decoration: const InputDecoration(labelText: "About", prefixIcon: Icon(Icons.info))),
//               const SizedBox(height: 80),
//               ElevatedButton(
//                 onPressed: _signup,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 94, 154, 203),
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                 ),
//                 child: const Text("Create Account"),
//               ),
//               const SizedBox(height: 80),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




// import 'dart:io';
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:image_picker/image_picker.dart';
// import 'home_screen.dart';

// class SignupScreen extends StatefulWidget {
//   const SignupScreen({super.key});

//   @override
//   State<SignupScreen> createState() => _SignupScreenState();
// }

// class _SignupScreenState extends State<SignupScreen> {
//   final nameController = TextEditingController();
//   final phoneController = TextEditingController();
//   final emailController = TextEditingController();
//   final passwordController = TextEditingController();
//   final aboutController = TextEditingController();

//   File? profileImage;

//   Future<void> _pickImage() async {
//     final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
//     if (pickedImage != null) {
//       setState(() => profileImage = File(pickedImage.path));
//     }
//   }

//   Future<void> _signup() async {
//     final name = nameController.text.trim();
//     final phone = phoneController.text.trim();
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();
//     final about = aboutController.text.trim();

//     if ([name, phone, email, password, about].any((v) => v.isEmpty) || profileImage == null) {
//       _showError("All fields including profile image are required.");
//       return;
//     }

//     try {
//       final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: email,
//         password: password,
//       );

//       final uid = userCredential.user!.uid;

//       await FirebaseFirestore.instance.collection('users').doc(uid).set({
//         'name': name,
//         'phone': phone,
//         'email': email,
//         'about': about,
//         'enrolledCourses': [],
//       });

//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => HomeScreen()),
//       );
//     } catch (e) {
//       _showError("Signup failed. Try a different email.");
//     }
//   }

//   void _showError(String msg) {
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: const Text("Error"),
//         content: Text(msg),
//         actions: [
//           TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK"))
//         ],
//       ),
//     );
//   }

//   Widget buildField({required TextEditingController controller, required String label, required IconData icon, bool obscure = false, int maxLines = 1}) {
//     return Container(
//       margin: const EdgeInsets.only(bottom: 16),
//       decoration: BoxDecoration(
//         color: Colors.white.withOpacity(0.8),
//         borderRadius: BorderRadius.circular(8),
//       ),
//       child: TextField(
//         controller: controller,
//         obscureText: obscure,
//         maxLines: maxLines,
//         decoration: InputDecoration(
//           labelText: label,
//           prefixIcon: Icon(icon),
//           border: InputBorder.none,
//           contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
//         ),
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Sign Up")),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: SingleChildScrollView(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             children: [
//               GestureDetector(
//                 onTap: _pickImage,
//                 child: CircleAvatar(
//                   radius: 50,
//                   backgroundImage: profileImage != null ? FileImage(profileImage!) : null,
//                   child: profileImage == null
//                       ? const Icon(Icons.camera_alt, size: 40, color: Color.fromARGB(255, 94, 154, 203),)
//                       : null,
//                 ),
//               ),
//               const SizedBox(height: 36),

//               // Text Fields with transparent backgrounds
//               buildField(controller: nameController, label: "Name", icon: Icons.person),
//               buildField(controller: phoneController, label: "Phone", icon: Icons.phone),
//               buildField(controller: emailController, label: "Email", icon: Icons.email),
//               buildField(controller: passwordController, label: "Password", icon: Icons.lock, obscure: true),
//               buildField(controller: aboutController, label: "About", icon: Icons.info, maxLines: 3),

//               const SizedBox(height: 40),
//               ElevatedButton(
//                 onPressed: _signup,
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color.fromARGB(255, 94, 154, 203),
//                   foregroundColor: Colors.white,
//                   padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 14),
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
//                 ),
//                 child: const Text("Create Account", style: TextStyle(fontSize: 16)),
//               ),
//               const SizedBox(height: 80),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }



import 'dart:io';
import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:image_picker/image_picker.dart';
import 'home_screen.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({super.key});

  @override
  State<SignupScreen> createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final nameController = TextEditingController();
  final phoneController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final aboutController = TextEditingController();

  File? profileImage;

  Future<void> _pickImage() async {
    final pickedImage = await ImagePicker().pickImage(source: ImageSource.gallery);
    if (pickedImage != null) {
      setState(() => profileImage = File(pickedImage.path));
    }
  }

  Future<void> _signup() async {
    final name = nameController.text.trim();
    final phone = phoneController.text.trim();
    final email = emailController.text.trim();
    final password = passwordController.text.trim();
    final about = aboutController.text.trim();

    if ([name, phone, email, password, about].any((v) => v.isEmpty) || profileImage == null) {
      _showError("All fields including profile image are required.");
      return;
    }

    try {
      final userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
        email: email,
        password: password,
      );

      final uid = userCredential.user!.uid;

      await FirebaseFirestore.instance.collection('users').doc(uid).set({
        'name': name,
        'phone': phone,
        'email': email,
        'about': about,
        'enrolledCourses': [],
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    } catch (e) {
      _showError("Signup failed. Try a different email.");
    }
  }

  void _showError(String msg) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Error"),
        content: Text(msg),
        actions: [
          TextButton(onPressed: () => Navigator.pop(context), child: const Text("OK"))
        ],
      ),
    );
  }

  Widget buildField({
    required TextEditingController controller,
    required String label,
    required IconData icon,
    bool obscure = false,
    int maxLines = 1,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.8),
        borderRadius: BorderRadius.circular(8),
      ),
      child: TextField(
        controller: controller,
        obscureText: obscure,
        maxLines: maxLines,
        style: const TextStyle(fontSize: 14),
        decoration: InputDecoration(
          labelText: label,
          labelStyle: const TextStyle(fontSize: 14),
          prefixIcon: Icon(icon, size: 20),
          border: InputBorder.none,
          contentPadding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Sign Up")),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              GestureDetector(
                onTap: _pickImage,
                child: CircleAvatar(
                  radius: 50,
                  backgroundImage: profileImage != null ? FileImage(profileImage!) : null,
                  child: profileImage == null
                      ? const Icon(Icons.camera_alt, size: 40, color: Colors.white)
                      : null,
                ),
              ),
              const SizedBox(height: 54),
              buildField(controller: nameController, label: "Name", icon: Icons.person),
              buildField(controller: phoneController, label: "Phone", icon: Icons.phone),
              buildField(controller: emailController, label: "Email", icon: Icons.email),
              buildField(controller: passwordController, label: "Password", icon: Icons.lock, obscure: true),
              buildField(controller: aboutController, label: "About", icon: Icons.info, maxLines: 2),
              const SizedBox(height: 60),
              ElevatedButton(
                onPressed: _signup,
                style: ElevatedButton.styleFrom(
                 
                  backgroundColor: const Color.fromARGB(255, 94, 154, 203),
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
                ),
                child: const Text("Create Account", style: TextStyle(fontSize: 16)),
              ),
              const SizedBox(height: 50),
            ],
          ),
        ),
      ),
    );
  }
}
