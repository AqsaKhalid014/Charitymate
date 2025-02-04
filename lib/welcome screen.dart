import 'package:flutter/material.dart';
import 'package:sahara_homepage/loginpage.dart';
import 'package:sahara_homepage/signup%20screen.dart';
import 'package:lottie/lottie.dart';

class WelcomeScreen extends StatelessWidget {
  // Updated class name
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.teal.shade900,
              Colors.teal.shade400,
              Colors.teal.shade800
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomLeft,
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Spacer(),
            SizedBox(
              height: 105,
            ),
            Text(
              "CHARITY MATE",
              style: TextStyle(
                color: Colors.white,
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            Lottie.asset(
              'assets/animationlottie/loginpage animation.json', // Replace with your Lottie file path
              fit: BoxFit.fill,
              height: 400,
              width: double.infinity,

              repeat: true,
            ),
            _buildButton("LOG IN", Colors.white, Colors.black, () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => loginPage()));
            }),
            SizedBox(height: 20),
            _buildButton("SIGN UP", Colors.white, Colors.black, () {
              Navigator.pushReplacement(context,
                  MaterialPageRoute(builder: (context) => signuppage()));
            }),
            Spacer(),
          ],
        ),
      ),
    );
  }

  Widget _buildButton(
      String text, Color bgColor, Color textColor, VoidCallback onPressed) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 40),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: bgColor,
          minimumSize: Size(double.infinity, 50),
          //shadowColor: Colors.white,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(25)),
        ),
        onPressed: onPressed,
        child: Text(text, style: TextStyle(color: textColor, fontSize: 18)),
      ),
    );
  }

  Widget _buildSocialIcon(IconData icon, Color color) {
    return Container(
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        border: Border.all(color: Colors.white, width: 1),
      ),
      padding: EdgeInsets.all(10),
      child: Icon(icon, color: color, size: 20),
    );
  }
}
