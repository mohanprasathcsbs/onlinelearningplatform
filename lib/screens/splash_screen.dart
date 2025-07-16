import 'package:flutter/material.dart';
import 'home_screen.dart';

class SplashScreenAfterLogin extends StatefulWidget {
  const SplashScreenAfterLogin({super.key});

  @override
  State<SplashScreenAfterLogin> createState() => _SplashScreenAfterLoginState();
}

class _SplashScreenAfterLoginState extends State<SplashScreenAfterLogin> {
  @override
  void initState() {
    super.initState();

    // Simulate loading delay
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const HomeScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(129, 240, 241, 241),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
           
            Image.asset(
              'assets/logo1.png', 
              width: 220,
            ),
            const SizedBox(height: 20),
            const Text(
              'Learn Build Grow!',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 12),
            const CircularProgressIndicator(),
          ],
        ),
      ),
    );
  }
}
