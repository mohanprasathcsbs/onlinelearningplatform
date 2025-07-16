// import 'package:flutter/material.dart';

// class EnrolledCoursesScreen extends StatelessWidget {
//   final List<String> courses;

//   const EnrolledCoursesScreen({super.key, required this.courses});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("My Enrolled Courses")),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFF1F7FF), Color(0xFFE0E0FF)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: ListView.builder(
//           padding: const EdgeInsets.all(20),
//           itemCount: courses.length,
//           itemBuilder: (context, index) {
//             return Card(
//               elevation: 3,
//               margin: const EdgeInsets.symmetric(vertical: 8),
//               child: ListTile(
//                 leading: const Icon(Icons.play_circle_fill, color: Colors.blueAccent),
//                 title: Text(courses[index]),
//               ),
//             );
//           },
//         ),
//       ),
//     );
//   }
// }



import 'package:flutter/material.dart';

class EnrolledCoursesScreen extends StatelessWidget {
  final List<String> courses;

  const EnrolledCoursesScreen({super.key, required this.courses});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("My Enrolled Courses")),
      body: Container(
        decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/bg2.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
        child: courses.isEmpty
            ? const Center(
                child: Text(
                  "No courses found.",
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
                ),
              )
            : ListView.builder(
                padding: const EdgeInsets.all(20),
                itemCount: courses.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 3,
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    child: ListTile(
                      leading: const Icon(Icons.play_circle_fill, color: Colors.blueAccent),
                      title: Text(courses[index]),
                    ),
                  );
                },
              ),
      ),
    );
  }
}
