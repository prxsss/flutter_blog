import 'dart:math' as math;
import 'package:blog_app/presentation/screens/post_detail_screen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class PostListing extends StatelessWidget {
  const PostListing({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => const PostDetailScreen()),
        );
      },
      child: Padding(
        padding: const EdgeInsets.all(25),
        child: Column(
          children: [
            Row(
              children: [
                Container(
                  width: 20,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.grey,
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: NetworkImage(
                        'https://avatar.iran.liara.run/public/boy?username=Arunangshu',
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                const Text(
                  'Arunangshu Das',
                  style: TextStyle(color: Color(0xff242424)),
                ),
              ],
            ),
            const SizedBox(height: 15),
            Row(
              children: [
                const Expanded(
                  child: Column(
                    children: [
                      Text(
                        "Express.js Secrets That Senior Developers Don't Share",
                        style: TextStyle(
                          color: Color(0xff242424),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Express.js is often the go-to framework for building web application in Node.js.',
                        style: TextStyle(color: Color(0xff6B6B6B)),
                      ),
                    ],
                  ),
                ),
                const SizedBox(width: 30),
                Container(
                  width: 80,
                  height: 50,
                  decoration: const BoxDecoration(
                    color: Colors.grey,
                    image: DecorationImage(
                      image: NetworkImage(
                        'https://miro.medium.com/v2/resize:fit:1024/0*vq-JSMynSHUPXx70',
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                const Text(
                  'Feb 21, 2025',
                  style: TextStyle(color: Color(0xff6B6B6B)),
                ),
                const SizedBox(width: 20),
                RichText(
                  text: const TextSpan(
                    style: TextStyle(color: Color(0xff6B6B6B)),
                    children: [
                      WidgetSpan(
                        child: FaIcon(
                          FontAwesomeIcons.handsClapping,
                          size: 16,
                          color: Color(0xff6B6B6B),
                        ),
                      ),
                      WidgetSpan(child: SizedBox(width: 5)),
                      TextSpan(text: '158'),
                    ],
                  ),
                ),
                const SizedBox(width: 20),
                RichText(
                  text: TextSpan(
                    style: const TextStyle(color: Color(0xff6B6B6B)),
                    children: [
                      WidgetSpan(
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.rotationY(math.pi),
                          child: const FaIcon(
                            FontAwesomeIcons.solidComment,
                            size: 16,
                            color: Color(0xff6B6B6B),
                          ),
                        ),
                      ),
                      const WidgetSpan(child: SizedBox(width: 5)),
                      const TextSpan(text: '10'),
                    ],
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
