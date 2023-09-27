import 'package:flutter/material.dart';
import 'package:orphan_savers/views/components/backg2_links.dart';
import 'package:orphan_savers/views/responsive/desktop_folder/desktopscaffold.dart';

class CurveContainer extends StatefulWidget {
  const CurveContainer({super.key});

  @override
  State<CurveContainer> createState() => _CurveContainerState();
}

class _CurveContainerState extends State<CurveContainer> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopInwardCurveClipper(), // Custom clipper for top inward curve
      child: Container(
        alignment: AlignmentDirectional.topStart,
        height: 400,
        width: double.infinity,
        color: const Color(0xFF823B00),
        child: Row(children: [
          ColorFiltered(
            colorFilter:
                const ColorFilter.mode(Colors.orange, BlendMode.modulate),
            child: Container(
              height: double.infinity,
              width: 500,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/images/background.jpeg'),
                  fit: BoxFit.fitHeight,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              alignment: Alignment.centerLeft,
              //color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'USEFUL LINKS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  HeaderTextButton(
                    title: 'Who we are',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'WHO WE ARE';
                      });
                    },
                    isSelected: selectedButton == 'WHO WE ARE',
                  ),
                  HeaderTextButton(
                    title: 'What we do',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'WHAT WE DO';
                      });
                    },
                    isSelected: selectedButton == 'WHAT WE DO',
                  ),
                  HeaderTextButton(
                    title: 'How to help',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'HOW TO HELP';
                      });
                    },
                    isSelected: selectedButton == 'HOW TO HELP',
                  ),
                  HeaderTextButton(
                    title: 'Media',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'MEDIA';
                      });
                    },
                    isSelected: selectedButton == 'MEDIA',
                  ),
                  HeaderTextButton(
                    title: 'Resources',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'RESOURCES';
                      });
                    },
                    isSelected: selectedButton == 'RESOURCES',
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: Container(
              alignment: Alignment.centerLeft,
              //color: Colors.black,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    'USEFUL LINKS',
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 15),
                  ),
                  const SizedBox(height: 10),
                  HeaderTextButton(
                    title: 'Who we are',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'WHO WE ARE';
                      });
                    },
                    isSelected: selectedButton == 'WHO WE ARE',
                  ),
                  HeaderTextButton(
                    title: 'What we do',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'WHAT WE DO';
                      });
                    },
                    isSelected: selectedButton == 'WHAT WE DO',
                  ),
                  HeaderTextButton(
                    title: 'How to help',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'HOW TO HELP';
                      });
                    },
                    isSelected: selectedButton == 'HOW TO HELP',
                  ),
                  HeaderTextButton(
                    title: 'Media',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'MEDIA';
                      });
                    },
                    isSelected: selectedButton == 'MEDIA',
                  ),
                  HeaderTextButton(
                    title: 'Resources',
                    onpressed: () {
                      setState(() {
                        selectedButton = 'RESOURCES';
                      });
                    },
                    isSelected: selectedButton == 'RESOURCES',
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }
}

class TopInwardCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.moveTo(0, size.height); // Start at the bottom-left corner
    path.lineTo(
        0, 100); // Line to the top-left corner (adjust the curve height)
    path.quadraticBezierTo(size.width / 2, 0, size.width,
        100); // Curve to the top-right corner (adjust the curve height)
    path.lineTo(size.width, size.height); // Line to the bottom-right corner
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // You can return true if clipping should be recalculated
  }
}
