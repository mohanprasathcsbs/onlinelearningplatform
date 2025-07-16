
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:flutter/material.dart';
// import '../models/course_model.dart';
// import 'video_screen.dart';

// class CourseDetailScreen extends StatefulWidget {
//   final CourseModel course;

//   const CourseDetailScreen({super.key, required this.course});

//   @override
//   State<CourseDetailScreen> createState() => _CourseDetailScreenState();
// }

// class _CourseDetailScreenState extends State<CourseDetailScreen> {
//   bool isEnrolled = false;

//   @override
//   void initState() {
//     super.initState();
//     _checkEnrollment();
//   }

//   Future<void> _checkEnrollment() async {
//     final uid = FirebaseAuth.instance.currentUser!.uid;
//     final userDoc = await FirebaseFirestore.instance.collection('users').doc(uid).get();

//     if (userDoc.exists) {
//       final enrolledCourses = List<String>.from(userDoc['enrolledCourses'] ?? []);
//       if (enrolledCourses.contains(widget.course.title)) {
//         setState(() => isEnrolled = true);

//       }
//     }
//   }

//   Future<void> _enrollInCourse() async {
//     final uid = FirebaseAuth.instance.currentUser!.uid;
//     final userRef = FirebaseFirestore.instance.collection('users').doc(uid);

//     await userRef.update({
//       'enrolledCourses': FieldValue.arrayUnion([widget.course.title])
//     });

//     setState(() => isEnrolled = true);

//     ScaffoldMessenger.of(context).showSnackBar(
//       const SnackBar(content: Text("Enrolled successfully!")),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text(widget.course.title)),
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
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               // Course Thumbnail
//               ClipRRect(
//                 borderRadius: BorderRadius.circular(10),
//                 child: Image.network(
//                   widget.course.thumnail,
//                   width: double.infinity,
//                   height: 200,
//                   fit: BoxFit.cover,
//                   loadingBuilder: (context, child, loadingProgress) {
//                     if (loadingProgress == null) return child;
//                     return const Center(child: CircularProgressIndicator());
//                   },
//                   errorBuilder: (_, __, ___) =>
//                       const Center(child: Text("Thumbnail not available")),
//                 ),
//               ),

//               const SizedBox(height: 20),

//               // Course Title
//               Text(
//                 widget.course.title,
//                 style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//               ),

//               const SizedBox(height: 12),

//               // Course Description
//               Text(
//                 widget.course.description,
//                 style: const TextStyle(fontSize: 16),
//                 textAlign: TextAlign.justify,
//               ),

//               const SizedBox(height: 20),

//               // About This Course
//               const Text(
//                 "About This Course",
//                 style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//               ),
//               const SizedBox(height: 8),

//               Text(
//                 widget.course.about,
//                 style: const TextStyle(fontSize: 16),
//                 textAlign: TextAlign.justify,
//               ),

//               const SizedBox(height: 50),

//               // Enroll / Watch Video Button
//               Center(
//                 child: ElevatedButton(
//                   style: ElevatedButton.styleFrom(
//                     backgroundColor: isEnrolled
//                         ? const Color.fromARGB(255, 28, 157, 32)
//                         : const Color.fromARGB(255, 94, 154, 203),
//                     foregroundColor: Colors.white,
//                     shape: RoundedRectangleBorder(
//                       borderRadius: BorderRadius.circular(8),
//                     ),
//                   ),
//                   onPressed: () async {
//                     if (!isEnrolled) {
//                       await _enrollInCourse();
//                     } else {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (_) => VideoScreen(
//                             youtubeUrl: widget.course.videoUrl,
//                             coursetitle: widget.course.title,
//                           ),
//                         ),
//                       );
//                     }
//                   },
//                   child: Text(isEnrolled ? "Watch Video" : "Enroll for Free"),
//                 ),
//               ),

//               const SizedBox(height: 110),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }





import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import '../models/course_model.dart';
import 'home_screen.dart';
import 'profile_screen.dart';
import 'video_screen.dart';

class CourseDetailScreen extends StatefulWidget {
  final CourseModel course;

  const CourseDetailScreen({super.key, required this.course});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  bool isEnrolled = false;
  int _selectedIndex = 0; // Default to Home tab

  @override
  void initState() {
    super.initState();
    _checkEnrollment();
  }

  Future<void> _checkEnrollment() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final userDoc = await FirebaseFirestore.instance.collection('users').doc(uid).get();

    if (userDoc.exists) {
      final enrolledCourses = List<String>.from(userDoc['enrolledCourses'] ?? []);
      if (enrolledCourses.contains(widget.course.title)) {
        setState(() => isEnrolled = true);
      }
    }
  }

  Future<void> _enrollInCourse() async {
    final uid = FirebaseAuth.instance.currentUser!.uid;
    final userRef = FirebaseFirestore.instance.collection('users').doc(uid);

    await userRef.update({
      'enrolledCourses': FieldValue.arrayUnion([widget.course.title])
    });

    setState(() => isEnrolled = true);

    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text("Enrolled successfully!")),
    );
  }

  void _onItemTapped(int index) {
    if (_selectedIndex == index) return;

    setState(() => _selectedIndex = index);

    if (index == 0) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    } else if (index == 1) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const ProfileScreen()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.course.title)),
      body: Container(
        decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Image.network(
                  widget.course.thumnail,
                  width: double.infinity,
                  height: 200,
                  fit: BoxFit.cover,
                  loadingBuilder: (context, child, loadingProgress) {
                    if (loadingProgress == null) return child;
                    return const Center(child: CircularProgressIndicator());
                  },
                  errorBuilder: (_, __, ___) =>
                      const Center(child: Text("Thumbnail not available")),
                ),
              ),
              const SizedBox(height: 20),
              Text(
                widget.course.title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 12),
              Text(
                widget.course.description,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 20),
              const Text(
                "About This Course",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 8),
              Text(
                widget.course.about,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),
              const SizedBox(height: 50),
              Center(
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: isEnrolled
                        ? const Color.fromARGB(255, 28, 157, 32)
                        : const Color.fromARGB(255, 94, 154, 203),
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  onPressed: () async {
                    if (!isEnrolled) {
                      await _enrollInCourse();
                    } else {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (_) => VideoScreen(
                            youtubeUrl: widget.course.videoUrl,
                            coursetitle: widget.course.title,
                          ),
                        ),
                      );
                    }
                  },
                  child: Text(isEnrolled ? "Watch Video" : "Enroll for Free"),
                ),
              ),
              const SizedBox(height: 110),
            ],
          ),
        ),
      ),

      // Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.teal,
        unselectedItemColor: Colors.grey[600],
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),
    );
  }
}
