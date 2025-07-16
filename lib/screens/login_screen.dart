
// import 'package:flutter/material.dart';
// import 'package:firebase_auth/firebase_auth.dart';
// import 'home_screen.dart';
// import 'signup_screen.dart';
// import 'splash_screen.dart';

// class LoginScreen extends StatelessWidget {
//   final TextEditingController emailController = TextEditingController();
//   final TextEditingController passwordController = TextEditingController();

//   LoginScreen({super.key});

//   Future<void> _login(BuildContext context) async {
//     final email = emailController.text.trim();
//     final password = passwordController.text.trim();

//     if (email.isEmpty || password.isEmpty) {
//       _showError(context, "Email and password cannot be empty.");
//       return;
//     }

//     try {
//       await FirebaseAuth.instance.signInWithEmailAndPassword(
//         email: email,
//         password: password,
//       );
//       Navigator.pushReplacement(
//         context,
//         MaterialPageRoute(builder: (_) => const SplashScreenAfterLogin()),
//       );
//     } catch (e) {
//       _showError(context, "Login failed. Please check credentials.");
//     }
//   }

//   void _showError(BuildContext context, String message) {
//     showDialog(
//       context: context,
//       builder: (_) => AlertDialog(
//         title: const Text("Error"),
//         content: Text(message),
//         actions: [
//           TextButton(
//             onPressed: () => Navigator.pop(context),
//             child: const Text("OK"),
//           ),
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: const Text("Login")),
//       body: Container(
//         decoration: const BoxDecoration(
//           gradient: LinearGradient(
//             colors: [Color(0xFFD9F1FF), Color(0xFFE3DFFF)],
//             begin: Alignment.topLeft,
//             end: Alignment.bottomRight,
//           ),
//         ),
//         child: Padding(
//           padding: const EdgeInsets.all(20),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               const SizedBox(height: 60),

//               // App Name
//               const Text(
//                 "Online Learning",
//                 style: TextStyle(
//                   fontSize: 28,
//                   fontWeight: FontWeight.bold,
//                   color: Colors.black87,
//                 ),
//               ),

//               const SizedBox(height: 6),

//               // Theme Text
//               const Text(
//                 "Learn. Build. Grow.",
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.black54,
//                   fontStyle: FontStyle.italic,
//                 ),
//               ),

//               const SizedBox(height: 60),

//               // Email Field
              
//               Container(
//                 decoration: BoxDecoration(
//                   color: const Color.fromARGB(255, 255, 255, 255).withOpacity(0.4),
//                   borderRadius: BorderRadius.circular(8),
//                   border:Border.all(
//       color: const Color.fromARGB(255, 5, 5, 5),  // Border color
//       width: 1.0,          // Border width
//     ),
//                 ),
//                 child: TextField(
//                   controller: emailController,
//                   decoration: const InputDecoration(
//                     labelText: "Email",
//                     border: InputBorder.none,
//                     contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 16),

//               // Password Field
//               Container(
//                 decoration: BoxDecoration(
//                   color: Colors.white.withOpacity(0.4),
//                   borderRadius: BorderRadius.circular(8),
//                   border:Border.all(
//       color: const Color.fromARGB(255, 0, 0, 0),  // Border color
//       width: 1.0,          // Border width
//     ),
   
//                 ),
//                 child: TextField(
//                   controller: passwordController,
//                   obscureText: true,
//                   decoration: const InputDecoration(
//                     labelText: "Password",
//                     border: InputBorder.none,
//                     contentPadding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
                    
//                   ),
//                 ),
//               ),

//               const SizedBox(height: 65),

//               ElevatedButton(
//                 onPressed: () => _login(context),
//                 style: ElevatedButton.styleFrom(
                  
//                   backgroundColor: const Color.fromARGB(255, 94, 154, 203),
//                   foregroundColor: Colors.white,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                 ),
//                 child: const Text("Login", style: TextStyle(fontSize: 16)),
//               ),

//               const SizedBox(height: 10),

//               TextButton(
//                 onPressed: () => Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (_) => const SignupScreen()),
//                 ),
//                 child: const Text("Don't have an account? Sign up"),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }




import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'signup_screen.dart';
import 'splash_screen.dart';

class LoginScreen extends StatelessWidget {
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  LoginScreen({super.key});

  Future<void> _login(BuildContext context) async {
    final email = emailController.text.trim();
    final password = passwordController.text.trim();

    if (email.isEmpty || password.isEmpty) {
      _showError(context, "Email and password cannot be empty.");
      return;
    }

    try {
      await FirebaseAuth.instance.signInWithEmailAndPassword(
        email: email,
        password: password,
      );
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const SplashScreenAfterLogin()),
      );
    } catch (e) {
      _showError(context, "Login failed. Please check credentials.");
    }
  }

  void _showError(BuildContext context, String message) {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        title: const Text("Error"),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      body: Stack(
        children: [
          // Background Image
          SizedBox.expand(
            child: Image.asset(
              'assets/bg2.jpg', // Make sure this path matches your pubspec.yaml
              fit: BoxFit.cover,
            ),
          ),

          // Foreground UI
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const SizedBox(height: 110),

                  // App Name
                  const Text(
                    "Online Learning Platform",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87,
                    ),
                  ),

                  const SizedBox(height: 6),

                  // Theme Text
                  const Text(
                    "Learn. Build. Grow.",
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black54,
                      fontStyle: FontStyle.italic,
                    ),
                  ),

                  const SizedBox(height: 60),

                  // Email Field
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: TextField(
                      controller: emailController,
                      decoration: const InputDecoration(
                        labelText: "Email",
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  // Password Field
                  Container(
                    decoration: BoxDecoration(
                      color: Colors.white.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(8),
                      border: Border.all(color: Colors.black, width: 1),
                    ),
                    child: TextField(
                      controller: passwordController,
                      obscureText: true,
                      decoration: const InputDecoration(
                        labelText: "Password",
                        border: InputBorder.none,
                        contentPadding:
                            EdgeInsets.symmetric(horizontal: 9, vertical: 5),
                      ),
                    ),
                  ),

                  const SizedBox(height: 65),

                  // Login Button
                  ElevatedButton(
                    onPressed: () => _login(context),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 94, 154, 203),
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text("Login", style: TextStyle(fontSize: 16)),
                  ),

                  const SizedBox(height: 10),

                  // Signup Navigation
                  TextButton(
                    onPressed: () => Navigator.push(
                      context,
                      MaterialPageRoute(builder: (_) => const SignupScreen()),
                    ),
                    child: const Text("Don't have an account? Sign up"),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
