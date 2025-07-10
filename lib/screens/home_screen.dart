

// import 'package:flutter/material.dart';
// import '../services/dummy_data.dart';
// import '../widgets/course_card.dart';
// import 'course_detail_screen.dart';
// import 'profile_screen.dart';

// class HomeScreen extends StatefulWidget {
//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   final TextEditingController _searchController = TextEditingController();
//   String _searchQuery = "";

//   @override
//   Widget build(BuildContext context) {
//     final suggestedCourses = DummyData.getSuggestedCourses()
//         .where((course) => course.title.toLowerCase().contains(_searchQuery.toLowerCase()))
//         .toList();

//     final topCourses = DummyData.getTopCourses()
//         .where((course) => course.title.toLowerCase().contains(_searchQuery.toLowerCase()))
//         .toList();

//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Online Learning"),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.person),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen()));
//             },
//           ),
//         ],
//       ),
//       body:
     
//        ListView(
        
//         padding: const EdgeInsets.all(10),
//         children: [
//           // 🔍 Search Bar
//           TextField(
//             controller: _searchController,
//             onChanged: (value) {
//               setState(() {
//                 _searchQuery = value;
//               });
//             },
//             decoration: InputDecoration(
//               hintText: 'Search courses...',
//               prefixIcon: const Icon(Icons.search),
//               border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//               filled: true,
//               fillColor: Colors.grey[200],
//               contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
//             ),
//           ),
//           const SizedBox(height: 20),

//           const Text("Suggested for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//           ...suggestedCourses.map((course) => CourseCard(
//                 course: course,
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (_) => CourseDetailScreen(course: course)));
//                 },
//               )),
//           const SizedBox(height: 20),

//           const Text("Top Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//           ...topCourses.map((course) => CourseCard(
//                 course: course,
//                 onTap: () {
//                   Navigator.push(context, MaterialPageRoute(builder: (_) => CourseDetailScreen(course: course)));
//                 },
//               )),
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import '../services/dummy_data.dart';
import '../widgets/course_card.dart';
import 'course_detail_screen.dart';
import 'profile_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _searchController = TextEditingController();
  String _searchQuery = "";

  @override
  Widget build(BuildContext context) {
    final suggestedCourses = DummyData.getSuggestedCourses()
        .where((course) => course.title.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    final topCourses = DummyData.getTopCourses()
        .where((course) => course.title.toLowerCase().contains(_searchQuery.toLowerCase()))
        .toList();

    return Scaffold(
      appBar: AppBar(
        title: const Text("Online Learning"),
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen()));
            },
          ),
        ],
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
        ),
        child: ListView(
          padding: const EdgeInsets.all(10),
          children: [
            // 🔍 Search Bar
            TextField(
              controller: _searchController,
              onChanged: (value) {
                setState(() {
                  _searchQuery = value;
                });
              },
              decoration: InputDecoration(
                hintText: 'Search courses...',
                prefixIcon: const Icon(Icons.search),
                border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: Colors.grey[200],
                contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
              ),
            ),
            const SizedBox(height: 20),

            const Text("Suggested for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...suggestedCourses.map((course) => CourseCard(
                  course: course,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => CourseDetailScreen(course: course)));
                  },
                )),
            const SizedBox(height: 20),

            const Text("Top Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ...topCourses.map((course) => CourseCard(
                  course: course,
                  onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (_) => CourseDetailScreen(course: course)));
                  },
                )),
          ],
        ),
      ),
    );
  }
}
