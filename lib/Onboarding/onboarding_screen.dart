import 'package:flutter/material.dart';
import 'elevated_button.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'content_model.dart';

class Onboarding extends StatefulWidget {
  const Onboarding({Key? key}) : super(key: key);

  @override
  State<Onboarding> createState() => _OnboardingState();
}

class _OnboardingState extends State<Onboarding> {
  int currentIndex = 0;
  PageController _controller = PageController();
  @override
  void initState() {
    _controller = PageController(initialPage: 0);
    super.initState();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xff2a4ba0),
      body: PageView.builder(
        controller: _controller,
        itemCount: contents.length,
        onPageChanged: (int index) {
          setState(() {
            currentIndex = index;
          });
        },
        itemBuilder: (_, i) {
          return Padding(
            padding: EdgeInsets.all(35),
            child: Container(
              margin: EdgeInsets.only(top: 35),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    contents[i].title,
                    style: TextStyle(
                      fontSize: 35,
                      color: Colors.white,
                      fontFamily: 'Manrope',
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        contents[i].title2,
                        style: TextStyle(
                          fontSize: 35,
                          color: Colors.white,
                          fontFamily: 'Manrope',
                        ),
                      ),
                      SizedBox(width: 15),
                      Image.asset("images/emoji.png", height: 35),
                    ],
                  ),
                  SizedBox(height: 15),
                  Text(
                    contents[i].description,
                    style: TextStyle(
                      fontSize: 20,
                      fontFamily: "Manrope",
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(height: 30),
                  Container(
                    child: Row(
                        children: List.generate(contents.length,
                            (index) => slides(index, context))),
                  ),
                  SizedBox(height: 45), // Adding vertical spacing
                  Center(
                    child: SvgPicture.asset(
                      contents[i].image,
                      height: 250, // Adjust the height as needed
                      width: double.infinity, // Make the image fill width
                      fit: BoxFit.cover, // Adjust the fit as needed
                    ),
                  ),
                  SizedBox(height: 45),
                  GetStartedButton(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }

  Container slides(int index, BuildContext context) {
    return Container(
      height: 6,
      width: currentIndex == index ? 45 : 20,
      margin: EdgeInsets.only(right: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.white,
      ),
    );
  }
}
