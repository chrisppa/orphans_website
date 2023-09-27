import 'package:flutter/material.dart';
import 'package:orphan_savers/views/components/header_textbutton.dart';
import 'package:orphan_savers/views/responsive/desktop_folder/desktopscaffold.dart';

class CurvedContainer2 extends StatefulWidget {
  const CurvedContainer2({super.key});

  @override
  State<CurvedContainer2> createState() => _CurvedContainer2State();
}

class _CurvedContainer2State extends State<CurvedContainer2> {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
        clipper: InwardCurveClipper(), // Custom clipper for inward curve
        child: Container(
          alignment: AlignmentDirectional.topStart,
          height: 600,
          width: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/background2.webp'),
                  fit: BoxFit.cover)),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.transparent,
                      height: 80,
                      child: const Text(
                        'Empower Orphans',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 30),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 140),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      color: Colors.transparent,
                      height: 80,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          HeaderTextButton(
                            title: 'WHO WE ARE',
                            onPressed: () {
                              setState(() {
                                selectedButton = 'WHO WE ARE';
                              });
                            },
                            isSelected: selectedButton == 'WHO WE ARE',
                          ),
                          const SizedBox(width: 15),
                          HeaderTextButton(
                            title: 'WHAT WE DO',
                            onPressed: () {
                              setState(() {
                                selectedButton = 'WHAT WE DO';
                              });
                            },
                            isSelected: selectedButton == 'WHAT WE DO',
                          ),
                          const SizedBox(width: 15),
                          HeaderTextButton(
                            title: 'HOW TO HELP',
                            onPressed: () {
                              setState(() {
                                selectedButton = 'HOW TO HELP';
                              });
                            },
                            isSelected: selectedButton == 'HOW TO HELP',
                          ),
                          const SizedBox(width: 15),
                          HeaderTextButton(
                            title: 'MEDIA',
                            onPressed: () {
                              setState(() {
                                selectedButton = 'MEDIA';
                              });
                            },
                            isSelected: selectedButton == 'MEDIA',
                          ),
                          const SizedBox(width: 5),
                          HeaderTextButton(
                            title: 'RESOURCES',
                            onPressed: () {
                              setState(() {
                                selectedButton = 'RESOURCES';
                              });
                            },
                            isSelected: selectedButton == 'RESOURCES',
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ));
  }
}

class InwardCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height - 100); // Start at the bottom-left corner
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100); // Curve
    path.lineTo(size.width, 0); // End at the top-right corner
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false; // You can return true if clipping should be recalculated
  }
}
