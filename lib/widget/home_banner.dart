import 'package:flutter/material.dart';

class HomeBanner extends StatelessWidget {
  const HomeBanner({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          padding: const EdgeInsets.all(16),
          width: MediaQuery.of(context).size.width,
          height: 160,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(25.0),
            color: const Color(0xffA47461),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Learn how become a\ngreat writer right now!',
                style: TextStyle(
                    fontSize: 16.0,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    height: 1.7),
              ),
              const SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.white,
                ),
                onPressed: () {},
                child: const Text(
                  "Read more",
                  style: TextStyle(
                    color: Color(0xffA47461),
                  ),
                ),
              ),
            ],
          ),
        ),
        Positioned(
          left: 55,
          right: -100,
          bottom: -40,
          child: SizedBox(
            width: 200,
            height: 200,
            child: Image.asset(
              'assets/images/img.png',
              fit: BoxFit.contain,
            ),
          ),
        )
      ],
    );
  }
}
