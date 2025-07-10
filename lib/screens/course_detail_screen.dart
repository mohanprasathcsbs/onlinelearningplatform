

import 'package:flutter/material.dart';
import '../models/course_model.dart';
import 'video_screen.dart';



class CourseDetailScreen extends StatefulWidget {
  final CourseModel course;

  const CourseDetailScreen({super.key, required this.course});

  @override
  State<CourseDetailScreen> createState() => _CourseDetailScreenState();
}

class _CourseDetailScreenState extends State<CourseDetailScreen> {
  bool isEnrolled = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.course.title)),
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
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Course Thumbnail
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

              // Course Title
              Text(
                widget.course.title,
                style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),

              

              // Course Description
              Text(
                widget.course.description,
                style: const TextStyle(fontSize: 16),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 20),

              // About This Course
              const Text(
                "About This Course",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold,),
              ),
              const SizedBox(height: 8),

              Text(
                widget.course.about,
                style: const TextStyle(fontSize: 16,),
                textAlign: TextAlign.justify,
              ),

              const SizedBox(height: 50),

              // Enroll / Watch Video Button
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
                  onPressed: () {
                    if (!isEnrolled) {
                      setState(() => isEnrolled = true);
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
    );
  }
}
