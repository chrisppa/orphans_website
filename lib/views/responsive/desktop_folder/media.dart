import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

import '../../components/chewie.dart';

class MediaScreen extends StatefulWidget {
  const MediaScreen({super.key});

  @override
  State<MediaScreen> createState() => _MediaScreenState();
}

class _MediaScreenState extends State<MediaScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20),
        child: SizedBox(
          height: 40,
          width: 95,
          child: FloatingActionButton(
            backgroundColor: Colors.orange,
            onPressed: () {},
            child: const Text(
              'DONATE',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      body: ListView(
        children: <Widget>[
          Column(
            children: [
              Stack(
                children: [
                  // Blurred background image
                  Image.asset(
                    'assets/images/background.jpeg',
                    height: 600,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  // Blur effect
                  BackdropFilter(
                    filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
                    child: Container(
                      height: 600,
                      width: double.infinity,
                      color: Colors.transparent,
                    ),
                  ),
                  // Content on top of the blurred background
                  Container(
                    alignment: AlignmentDirectional.topStart,
                    height: 600,
                    width: double.infinity,
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 30),
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
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 140),
                              child: Container(
                                alignment: Alignment.centerLeft,
                                color: Colors.transparent,
                                height: 80,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'WHO WE ARE',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'WHAT WE DO',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'HOW TO HELP',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'MEDIA',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                    TextButton(
                                        onPressed: () {},
                                        child: const Text(
                                          'RESOURCES',
                                          style: TextStyle(color: Colors.white),
                                        )),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                        const SizedBox(height: 400),
                        Container(
                          alignment: Alignment.center,
                          child: const Column(
                            children: [
                              Text(
                                'VIDEOS',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                'Telling Our Story',
                                style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 30,
                                    fontWeight: FontWeight.bold),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 60,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Take a closer look at the work we do and the individuals that inspire this movement.',
                        style: TextStyle(fontSize: 20),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 60),
                    child: Container(
                      alignment: Alignment.centerLeft,
                      child: const Text(
                        'Videos',
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          MyVideos(
            videoPlayerController:
                VideoPlayerController.asset('assets/videos/video_gazebo.mp4'),
            looping: true,
          ),
          MyVideos(
            videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
                'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4')),
            looping: true,
          ),
          MyVideos(
            videoPlayerController: VideoPlayerController.networkUrl(Uri.parse(
                'https://flutter.github.io/assets-for-api-docs/assets/videos/error.mp4')),
            looping: true,
          ),
        ],
      ),
    );
  }
}
