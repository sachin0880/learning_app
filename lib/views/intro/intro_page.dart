import 'package:flutter/material.dart';




class IntroScreen extends StatefulWidget {
  @override
  _IntroScreenState createState() => _IntroScreenState();
}

class _IntroScreenState extends State<IntroScreen> {
  final PageController _controller = PageController();
  int _currentIndex = 0;

  final List<Map<String, String>> introData = [
    {
      "image": "assets/images/02_preview2.jpg",
      "title": "Online Study is the",
      "highlight": "Best choice for everyone."
    },
    {
      "image": "assets/images/03_preview3.jpg",
      "title": "Best platform for both",
      "highlight": "Teachers & Learners"
    },
    {
      "image": "assets/images/04_preview4.jpg",
      "title": "Learn Anytime, Anywhere. Accelerate",
      "highlight": "Your Future and beyond."
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              itemCount: introData.length,
              itemBuilder: (context, index) {
                return IntroPage(
                  imagePath: introData[index]["image"]!,
                  title: introData[index]["title"]!,
                  highlight: introData[index]["highlight"]!,
                );
              },
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              introData.length,
                  (index) => buildDot(index),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: ElevatedButton(
              onPressed: () {
                if (_currentIndex == introData.length - 1) {
                  // Navigate to the next screen or home screen
                  print("Get Started");
                } else {
                  _controller.nextPage(
                    duration: Duration(milliseconds: 300),
                    curve: Curves.easeInOut,
                  );
                }
              },
              style: ElevatedButton.styleFrom(
                shape: CircleBorder(),
                padding: EdgeInsets.all(15),
                backgroundColor: Colors.yellow,
              ),
              child: Icon(Icons.arrow_forward, color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildDot(int index) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 300),
      margin: EdgeInsets.symmetric(horizontal: 5),
      height: 8,
      width: _currentIndex == index ? 16 : 8,
      decoration: BoxDecoration(
        color: _currentIndex == index ? Colors.yellow : Colors.grey,
        borderRadius: BorderRadius.circular(4),
      ),
    );
  }
}

class IntroPage extends StatelessWidget {
  final String imagePath;
  final String title;
  final String highlight;

  const IntroPage({
    required this.imagePath,
    required this.title,
    required this.highlight,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Image.asset(imagePath),
          ),
          SizedBox(height: 20),
          Text(
            title,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.w400,
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 5),
          Text(
            highlight,
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
