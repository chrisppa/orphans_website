import 'package:flutter/material.dart';
import 'package:orphan_savers/views/components/backg2.dart';
import 'package:orphan_savers/views/components/flipme.dart';
import 'package:orphan_savers/views/components/partners_carousel.dart';
import 'package:orphan_savers/views/components/curved_top_container.dart';

String selectedButton = '';

class DesktopScaffold extends StatefulWidget {
  const DesktopScaffold({super.key});

  @override
  State<DesktopScaffold> createState() => _DesktopScaffoldState();
}

class _DesktopScaffoldState extends State<DesktopScaffold> {
  //String dropdownValue = list.first;
  bool isHovered = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: Padding(
        padding: const EdgeInsets.symmetric(vertical: 23),
        child: SizedBox(
          height: 32,
          width: 78,
          child: MouseRegion(
            onEnter: (_) {
              setState(() {
                isHovered = true;
              });
            },
            onExit: (_) {
              setState(() {
                isHovered = false;
              });
            },
            child: FloatingActionButton(
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10)),
              backgroundColor: isHovered
                  ? const Color.fromRGBO(40, 33, 3, 1.0)
                  : Colors.orange,
              onPressed: () {},
              child: const Text(
                'DONATE',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endTop,
      backgroundColor: const Color.fromARGB(255, 249, 208, 151),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            CurvedContainer2(),
            Column(
              children: [
                SizedBox(height: 20),
                Text(
                  'Every Choice Is A Good One',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                  child: Text(
                    textAlign: TextAlign.center,
                    'From our 1-time Core Donations to our monthly Heartbeat Contributions, your gift will make a child’s life better.  Thank you so much for caring and welcome to the Orphan Savers family.',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                SizedBox(height: 40),
                FlipMe(),
                SizedBox(height: 40),
                Text(
                  'Who we are',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                  child: Text(
                    textAlign: TextAlign.center,
                    'Project Orphans is a multi-layered non-profit organization focused on helping vulnerable children and families by igniting grass-root causes and providing programs that overcome poverty and injustice. We take a long-term approach to what we do At Project Orphans, everyone’s voice is valuable and we welcome farmers, teachers, parents, and any member in our community to have a seat at the table. ',
                    style: TextStyle(fontWeight: FontWeight.w500, fontSize: 16),
                  ),
                ),
                SizedBox(height: 20),
                Text(
                  'Our Partners',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Colors.orange),
                ),
                Padding(
                    padding:
                        EdgeInsets.symmetric(vertical: 10, horizontal: 120),
                    child: PartnerCarousel()),
              ],
            ),
            SizedBox(
              height: 40,
            ),
            Backg2(),
          ],
        ),
      ),
    );
  }
}
