


// import 'package:flutter/material.dart';
// import '../models/course_model.dart';

// class CourseCard extends StatelessWidget {
//   final CourseModel course;
//   final VoidCallback onTap;

//   const CourseCard({required this.course, required this.onTap, super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Card(
//       elevation: 3,
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       child: InkWell(
//         onTap: onTap,
//         child: Row(
//           children: [
//             // Thumbnail image
//             ClipRRect(
//               borderRadius: const BorderRadius.only(
//                 topLeft: Radius.circular(8),
//                 bottomLeft: Radius.circular(8),
//                 topRight: Radius.circular(8),
//                 bottomRight: Radius.circular(8),
//               ),
//               child: Image.network(
//                 course.thumnail,
//                 width: 300,
//                 height: 180,
//                 fit: BoxFit.cover,
//                 errorBuilder: (context, error, stackTrace) => const Icon(Icons.broken_image, size: 80),
//               ),
//             ),

//             const SizedBox(width: 10),

//             // Course title and description
//             Expanded(
//               child: Padding(
//                 padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 4),
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(course.title, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                     const SizedBox(height: 4),
//                     Text(
//                       course.description,
//                       maxLines: 2,
//                       overflow: TextOverflow.ellipsis,
//                       style: const TextStyle(color: Colors.black87),
//                     ),
//                   ],
//                 ),
//               ),
//             ),

//             const Padding(
//               padding: EdgeInsets.only(right: 10),
//               child: Icon(Icons.arrow_forward_ios, size: 16),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:flutter/material.dart';
import '../models/course_model.dart';

class CourseCard extends StatelessWidget {
  final CourseModel course;
  final VoidCallback onTap;

  const CourseCard({required this.course, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      margin: const EdgeInsets.symmetric(vertical: 10),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Thumbnail Image
            ClipRRect(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(12),
                topRight: Radius.circular(12),
              ),
              child: Image.network(
                course.thumnail,
                width: double.infinity,
                height: 200,
                fit: BoxFit.cover,
                errorBuilder: (context, error, stackTrace) =>
                    const SizedBox(height: 200, child: Center(child: Icon(Icons.broken_image, size: 40))),
              ),
            ),

            // Title
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 12, 12, 4),
              child: Text(
                course.title,
                style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),

            // Description
            Padding(
              padding: const EdgeInsets.fromLTRB(12, 0, 12, 12),
              child: Text(
                course.description,
                style: const TextStyle(fontSize: 14, color: Colors.black87),
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
