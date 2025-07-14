
// import 'package:flutter/material.dart';
// import 'login_screen.dart';

// class ProfileScreen extends StatelessWidget {
//   final user = {
//     'name': 'MOHAN PRASATH N',
//     'email': 'nmohanprasath2006@gmail.com',
//     'phone': '9345552405',
//     'about': 'Mobile App Developer, MERN, Flutter, Java, C++, Figma',
//   };

//    ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Top Row: Profile & Logout
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                   children: [
                    
//                     TextButton.icon(
//   onPressed: () {
//     Navigator.pushAndRemoveUntil(
//       context,
//       MaterialPageRoute(builder: (_) => LoginScreen()),
//       (route) => false,
//     );
//   },
//   icon: const Icon(Icons.logout, color: Colors.red),
//   label: const Text(
//     "Log out",
//     style: TextStyle(color: Colors.red),
//   ),
// ),

//                   ],
//                 ),
//                 const SizedBox(height: 20),

//                 // Avatar
//                 const CircleAvatar(
//                   radius: 50,
//                   backgroundColor: Colors.black,
//                   child: Icon(Icons.person, size: 60, color: Colors.white),
//                 ),

//                 const SizedBox(height: 12),

//                 // Name
//                 Text(
//                   user['name']!,
//                   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),

//                 const SizedBox(height: 10),

//                 // Email and Phone
//                 Row(
//                   children: [
//                     const Icon(Icons.email, size: 18),
//                     const SizedBox(width: 8),
//                     Text(user['email']!),
//                   ],
//                 ),
//                 const SizedBox(height: 6),
//                 Row(
//                   children: [
//                     const Icon(Icons.phone, size: 18),
//                     const SizedBox(width: 8),
//                     Text(user['phone']!),
//                   ],
//                 ),

//                 const SizedBox(height: 20),

//                 // About Section
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text("About", style: TextStyle(fontWeight: FontWeight.bold)),
//                 ),
//                 const SizedBox(height: 6),
//                 Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Text(user['about']!),
//                 ),

//                 const SizedBox(height: 30),

//                 // Options
//                 Expanded(
//                   child: ListView(
//                     children: [
//                       _buildOption(icon: Icons.settings, label: "Settings"),
//                       _buildOption(icon: Icons.palette, label: "Appearance"),
//                       _buildOption(icon: Icons.favorite_border, label: "Wishlist"),
//                       _buildOption(icon: Icons.download, label: "Downloads"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildOption({required IconData icon, required String label}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         children: [
//           Icon(icon, size: 24),
//           const SizedBox(width: 12),
//           Text(label, style: const TextStyle(fontSize: 16)),
//         ],
//       ),
//     );
//   }
// }



// import 'package:flutter/material.dart';
// import 'login_screen.dart';
// import 'enrolled_courses_screen.dart';

// class ProfileScreen extends StatelessWidget {
//   final Map<String, Object> user = {
//     'name': 'MOHAN PRASATH N',
//     'email': 'nmohanprasath2006@gmail.com',
//     'phone': '9345552405',
//     'about': 'Mobile App Developer, MERN, Flutter, Java, C++, Figma',
//     'enrolledCourses': ['Flutter Basics', 'Dart Advanced'],
//   };

//   ProfileScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: SafeArea(
//           child: Padding(
//             padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.center,
//               children: [
//                 // Top Row
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     TextButton.icon(
//                       onPressed: () {
//                         Navigator.pushAndRemoveUntil(
//                           context,
//                           MaterialPageRoute(builder: (_) => LoginScreen()),
//                           (route) => false,
//                         );
//                       },
//                       icon: const Icon(Icons.logout, color: Colors.red),
//                       label: const Text(
//                         "Log out",
//                         style: TextStyle(color: Colors.red),
//                       ),
//                     ),
//                   ],
//                 ),

//                 const SizedBox(height: 20),

//                 // Avatar
//                 const CircleAvatar(
//                   radius: 50,
//                   backgroundColor: Colors.black,
//                   child: Icon(Icons.person, size: 60, color: Colors.white),
//                 ),

//                 const SizedBox(height: 12),

//                 // Name
//                 Text(
//                   user['name'] as String,
//                   style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//                 ),

//                 const SizedBox(height: 10),

//                 // Email & Phone
//                 Row(
//                   children: [
//                     const Icon(Icons.email, size: 18),
//                     const SizedBox(width: 8),
//                     Text(user['email'] as String),
//                   ],
//                 ),
//                 const SizedBox(height: 6),
//                 Row(
//                   children: [
//                     const Icon(Icons.phone, size: 18),
//                     const SizedBox(width: 8),
//                     Text(user['phone'] as String),
//                   ],
//                 ),

//                 const SizedBox(height: 20),

//                 // About
//                 Align(
//                   alignment: Alignment.centerLeft,
//                   child: Text("About", style: TextStyle(fontWeight: FontWeight.bold)),
//                 ),
//                 const SizedBox(height: 6),
//                 Container(
//                   width: double.infinity,
//                   padding: const EdgeInsets.all(12),
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(12),
//                   ),
//                   child: Text(user['about'] as String),
//                 ),

//                 const SizedBox(height: 20),

//                 // Enrolled Courses Button
//                 ElevatedButton.icon(
//                   onPressed: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) => EnrolledCoursesScreen(
//                           courses: List<String>.from(user['enrolledCourses'] as List),
//                         ),
//                       ),
//                     );
//                   },
//                   icon: const Icon(Icons.bookmark),
//                   label: const Text("View Enrolled Courses"),
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: Colors.blueAccent,
//                     foregroundColor: Colors.white,
//                   ),
//                 ),

//                 const SizedBox(height: 20),

//                 // Other Options
//                 Expanded(
//                   child: ListView(
//                     children: [
//                       _buildOption(icon: Icons.settings, label: "Settings"),
//                       _buildOption(icon: Icons.palette, label: "Appearance"),
//                       _buildOption(icon: Icons.favorite_border, label: "Wishlist"),
//                       _buildOption(icon: Icons.download, label: "Downloads"),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildOption({required IconData icon, required String label}) {
//     return Padding(
//       padding: const EdgeInsets.symmetric(vertical: 10),
//       child: Row(
//         children: [
//           Icon(icon, size: 24),
//           const SizedBox(width: 12),
//           Text(label, style: const TextStyle(fontSize: 16)),
//         ],
//       ),
//     );
//   }
// }



import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'login_screen.dart';
import 'enrolled_courses_screen.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  Future<DocumentSnapshot<Map<String, dynamic>>> _getUserData() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    return FirebaseFirestore.instance.collection('users').doc(uid).get();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FutureBuilder<DocumentSnapshot<Map<String, dynamic>>>(
        future: _getUserData(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (!snapshot.hasData || !snapshot.data!.exists) {
            return const Center(child: Text("User data not found."));
          }

          final userData = snapshot.data!.data()!;
          final enrolledCourses = List<String>.from(userData['enrolledCourses'] ?? []);

          return Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
              ),
            ),
            child: SafeArea(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // Logout Button
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        TextButton.icon(
                          onPressed: () {
                            FirebaseAuth.instance.signOut();
                            Navigator.pushAndRemoveUntil(
                              context,
                              MaterialPageRoute(builder: (_) => LoginScreen()),
                              (route) => false,
                            );
                          },
                          icon: const Icon(Icons.logout, color: Colors.red),
                          label: const Text("Log out", style: TextStyle(color: Colors.red)),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // Avatar
                    const CircleAvatar(
                      radius: 50,
                      backgroundColor: Colors.black,
                      child: Icon(Icons.person, size: 60, color: Colors.white),
                    ),
                    const SizedBox(height: 12),

                    // Name
                    Text(
                      userData['name'] ?? '',
                      style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 10),

                    // Email & Phone
                    Row(
                      children: [
                        const Icon(Icons.email, size: 18),
                        const SizedBox(width: 8),
                        Text(userData['email'] ?? ''),
                      ],
                    ),
                    const SizedBox(height: 6),
                    Row(
                      children: [
                        const Icon(Icons.phone, size: 18),
                        const SizedBox(width: 8),
                        Text(userData['phone'] ?? ''),
                      ],
                    ),
                    const SizedBox(height: 20),

                    // About
                    Align(
                      alignment: Alignment.centerLeft,
                      child: Text("About", style: TextStyle(fontWeight: FontWeight.bold)),
                    ),
                    const SizedBox(height: 6),
                    Container(
                      width: double.infinity,
                      padding: const EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: Text(userData['about'] ?? ''),
                    ),

                    const SizedBox(height: 20),

                    // Enrolled Courses Button
                    ElevatedButton.icon(
                      onPressed: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (_) => EnrolledCoursesScreen(courses: enrolledCourses),
                          ),
                        );
                      },
                      icon: const Icon(Icons.bookmark),
                      label: const Text("View Enrolled Courses"),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blueAccent,
                        foregroundColor: Colors.white,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Other Options
                    Expanded(
                      child: ListView(
                        children: [
                          _buildOption(icon: Icons.settings, label: "Settings"),
                          _buildOption(icon: Icons.palette, label: "Appearance"),
                          _buildOption(icon: Icons.favorite_border, label: "Wishlist"),
                          _buildOption(icon: Icons.download, label: "Downloads"),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      ),
    );
  }

  Widget _buildOption({required IconData icon, required String label}) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        children: [
          Icon(icon, size: 24),
          const SizedBox(width: 12),
          Text(label, style: const TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
