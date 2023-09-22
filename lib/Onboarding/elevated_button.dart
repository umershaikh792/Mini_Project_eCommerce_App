import 'package:flutter/material.dart';
import 'package:mini_project/Homepage/homepage.dart';
// import 'package:mini_project/Homepage/fun.dart';
// import 'package:mini_project/Onboarding/onboarding_screen.dart';
// import 'package:mini_project/Homepage/homepage.dart';

class GetStartedButton extends StatefulWidget {
  const GetStartedButton({Key? key});

  @override
  _GetStartedButtonState createState() => _GetStartedButtonState();
}

class _GetStartedButtonState extends State<GetStartedButton> {
  bool glitched = false;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        height: 70,
        width: 259,
        child: ElevatedButton(
          onPressed: () async {
            // Show the glitch effect
            setState(() {
              glitched = true;
            });

            // Wait for a short delay (e.g., 500 milliseconds)
            await Future.delayed(Duration(milliseconds: 500));

            // Navigate to the desired page
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => HomeView(), // Replace with your page
              ),
            );
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colors.white, // Button color
            foregroundColor: Colors.black, // Text color
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
          child: AnimatedContainer(
            duration: Duration(milliseconds: glitched ? 200 : 0),
            child: Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  'Get Started',
                  style: TextStyle(fontSize: 18),
                ),
                SizedBox(width: 50),
                Icon(Icons.arrow_forward),
              ],
            ),
            // decoration: BoxDecoration(
            //   border: glitched
            //       ? Border.all(
            //           color: Colors.white, // Change to your glitch color
            //           width: 2.0,
            //         )
            //       : null,
            // ),
          ),
        ),
      ),
    );
  }
}
