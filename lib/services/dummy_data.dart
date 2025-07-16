import '../models/course_model.dart';

class DummyData {
  static List<CourseModel> getSuggestedCourses() {
    return [
      CourseModel(
        title: 'Flutter for Beginners',
        description: 'Learn Flutter from scratch',
        videoUrl: 'https://youtu.be/jpuMWVlEd54?si=ogOixIe1Pwjqw0Db',
        thumnail: 'https://www.daily.co/blog/content/images/2023/07/Flutter-feature.png',
        about: """
Flutter is an open-source UI toolkit developed by Google.
It is used to build beautiful, natively compiled applications for mobile, web, and desktop from a single codebase.
""",
      ),
      CourseModel(
        title: 'React Crash Course',
        description: 'Build cross-platform apps',
        videoUrl: 'https://youtu.be/01bEb7R-F4s?si=pV_HFEpDpZKvial4',
        thumnail: 'https://uploads.sitepoint.com/wp-content/uploads/2017/04/1493235373large_react_apps_A-01.png',
        about: """React is a JavaScript library primarily used for building user interfaces (UIs) for web and mobile applications.It's known for its component-based architecture, which allows developers to create reusable UI elements that can be combined to build complex user interfaces.
           """
      ),
    ];
  }

  static List<CourseModel> getTopCourses() {
    return [
      CourseModel(
        title: 'Full Stack Development',
        description: 'MERN Stack Complete Guide',
        videoUrl: 'https://youtu.be/F9gB5b4jgOI?si=G3TVm1Fkl3e4394U',
        thumnail: 'https://www.tftus.com/wp-content/uploads/2021/01/mern-developer.jpg',
        about: """MERN is a popular JavaScript-based web development stack. It stands for MongoDB, Express.js, React, and Node.js.This combination of technologies allows developers to build full-stack web applications using JavaScript for both the front-end and back-end development.  """,
      ),
       CourseModel(
        title: 'C++ Programming Basics',
        description: 'C++ tutorial for beginners',
        videoUrl: 'https://youtu.be/-TkoO8Z07hI?si=Z1K9h2rtISyCKwdz',
        thumnail: 'https://miro.medium.com/v2/resize:fit:1400/1*ImTT0nd7BZUPe3S8XS_juA.png',
        about: """C++ is a powerful, high-performance programming language that is widely used for system/software development, game development, and performance-critical applications.
         It supports both procedural and object-oriented programming paradigms, making it versatile for various types of software projects.""",
      ),
       CourseModel(
        title: 'Java Programming',
        description: 'Java from basics to advanced',
        videoUrl: 'https://youtu.be/kGxSyqKbzsc?si=i5usx6nVtFee9Rvy',
        thumnail: 'https://gatling.io/hubfs/Website/Features/Java/Banner%20-%20Java.png',
        about: """Java is a versatile programming language used for developing a wide range of applications, including mobile apps, web applications, enterprise software, and more.""",
      ),
    ];
  }
}
