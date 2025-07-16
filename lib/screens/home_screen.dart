

// import 'package:flutter/material.dart';
// import '../services/dummy_data.dart';
// import '../widgets/course_card.dart';
// import 'course_detail_screen.dart';
// import 'profile_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

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
//         title: const Text("Learn.Build.Grow",style: TextStyle(
//                   fontSize: 20,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black,
//                   fontStyle: FontStyle.italic,
//                 ),),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.person),
//             onPressed: () {
//               Navigator.push(context, MaterialPageRoute(builder: (_) => ProfileScreen()));
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: ListView(
          
//           padding: const EdgeInsets.all(10),
//           children: [
//              const SizedBox(height: 10),
//             TextField(
//               controller: _searchController,
//               onChanged: (value) {
//                 setState(() {
//                   _searchQuery = value;
//                 });
//               },
//               decoration: InputDecoration(
//                 hintText: 'Search courses...',
//                 prefixIcon: const Icon(Icons.search),
//                 border: OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                 filled: true,
//                 fillColor: Colors.grey[200],
//                 contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
//               ),
//             ),
//             const SizedBox(height: 30),

//             const Text("Suggested for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold,)),
//             ...suggestedCourses.map((course) => CourseCard(
//                   course: course,
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (_) => CourseDetailScreen(course: course)));
//                   },
//                 )),
//             const SizedBox(height: 30),

//             const Text("Top Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             ...topCourses.map((course) => CourseCard(
//                   course: course,
//                   onTap: () {
//                     Navigator.push(context, MaterialPageRoute(builder: (_) => CourseDetailScreen(course: course)));
//                   },
//                 )),
//           ],
//         ),
//       ),
//     );
//   }
// }





// import 'package:flutter/material.dart';
// import '../services/dummy_data.dart';
// import '../widgets/course_card.dart';
// import 'course_detail_screen.dart';
// import 'profile_screen.dart';

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

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
//         backgroundColor: Colors.transparent,
//         elevation: 0,
//         title: const Text(
//           "Learn.Build.Grow",
//           style: TextStyle(
//             fontSize: 20,
//             fontWeight: FontWeight.bold,
//             color: Colors.black,
            
//           ),
//         ),
//         actions: [
//           IconButton(
//             icon: const Icon(Icons.person, color: Colors.black),
//             onPressed: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(builder: (_) => ProfileScreen()),
//               );
//             },
//           ),
//         ],
//       ),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: ListView(
//           padding: const EdgeInsets.all(16),
//           children: [
//             const SizedBox(height: 10),
//             TextField(
//               controller: _searchController,
//               onChanged: (value) {
//                 setState(() {
//                   _searchQuery = value;
//                 });
//               },
//               decoration: InputDecoration(
//                 hintText: 'Search courses...',
//                 prefixIcon: const Icon(Icons.search),
//                 filled: true,
//                 fillColor: Colors.white.withOpacity(0.8),
//                 contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
//                 enabledBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1),
//                 ),
//                 focusedBorder: OutlineInputBorder(
//                   borderRadius: BorderRadius.circular(12),
//                   borderSide: const BorderSide(color: Colors.blue, width: 1),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 30),
//             const Text(
//               "Suggested for you",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             ...suggestedCourses.map((course) => CourseCard(
//                   course: course,
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) => CourseDetailScreen(course: course),
//                       ),
//                     );
//                   },
//                 )),
//             const SizedBox(height: 30),
//             const Text(
//               "Top Courses",
//               style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 10),
//             ...topCourses.map((course) => CourseCard(
//                   course: course,
//                   onTap: () {
//                     Navigator.push(
//                       context,
//                       MaterialPageRoute(
//                         builder: (_) => CourseDetailScreen(course: course),
//                       ),
//                     );
//                   },
//                 )),
//             const SizedBox(height: 30),
//           ],
//         ),
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
  backgroundColor: Colors.transparent,
  elevation: 0,
  title: const Text(
    "Learn.Build.Grow",
    style: TextStyle(
      fontSize: 20,
      fontWeight: FontWeight.w500,
      color: Colors.black,
    ),
  ),
  actions: [
    Padding(
      padding: const EdgeInsets.only(right: 12.0),
      child: Image.asset(
        'assets/appicon.jpg', 
        width: 36,
        height: 36,
      ),
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
          padding: const EdgeInsets.all(16),
          children: [
            const SizedBox(height: 10),
            _buildSearchField(),
            const SizedBox(height: 30),
            const Text("Suggested for you", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ...suggestedCourses.map((course) => CourseCard(
                  course: course,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CourseDetailScreen(course: course),
                      ),
                    );
                  },
                )),
            const SizedBox(height: 30),
            const Text("Top Courses", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 10),
            ...topCourses.map((course) => CourseCard(
                  course: course,
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (_) => CourseDetailScreen(course: course),
                      ),
                    );
                  },
                )),
            const SizedBox(height: 30),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        selectedItemColor:const Color.fromARGB(255, 94, 154, 203),
        unselectedItemColor: Colors.black,
        currentIndex: 0,
        onTap: (index) {
          if (index == 1) {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
            );
          }
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'HOME',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'PROFILE',
          ),
        ],
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      controller: _searchController,
      onChanged: (value) => setState(() => _searchQuery = value),
      decoration: InputDecoration(
        hintText: 'Search courses...',
        prefixIcon: const Icon(Icons.search),
        filled: true,
        fillColor: Colors.white.withOpacity(0.8),
        contentPadding: const EdgeInsets.symmetric(vertical: 0, horizontal: 16),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Color.fromARGB(255, 0, 0, 0), width: 1),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
          borderSide: const BorderSide(color: Colors.blue, width: 1),
        ),
      ),
    );
  }
}
