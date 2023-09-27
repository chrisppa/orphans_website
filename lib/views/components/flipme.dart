import 'package:flip_card/flip_card.dart';
import 'package:flutter/material.dart';

class FlipMe extends StatelessWidget {
  const FlipMe({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          // front of the card
          front: Container(
            decoration: BoxDecoration(
                color: const Color(0xFF823B00),
                borderRadius: BorderRadius.circular(10)),
            alignment: Alignment.center,
            width: 180,
            height: 250,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "MAKE A",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                ),
                const Text("Core",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
                const Text("Donation",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
                const SizedBox(height: 30),
                Image.asset('assets/images/donation.png', height: 50, width: 50)
              ],
            ),
          ),
          // back of the card
          back: Container(
            alignment: Alignment.center,
            width: 180,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(10)),
            child: const Text("Back"),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          // front of the card
          front: Container(
            alignment: Alignment.center,
            width: 180,
            height: 250,
            decoration: BoxDecoration(
                color: const Color(0xFF823B00),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "BE A",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                ),
                const Text("Heartbeat",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
                const Text("Contributor",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
                const SizedBox(height: 30),
                Image.asset('assets/images/love.png', height: 50, width: 50)
              ],
            ),
          ),
          // back of the card
          back: Container(
            alignment: Alignment.center,
            width: 180,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(10)),
            child: const Text("Back"),
          ),
        ),
        const SizedBox(
          width: 50,
        ),
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          // front of the card
          front: Container(
            alignment: Alignment.center,
            width: 180,
            height: 250,
            decoration: BoxDecoration(
                color: const Color(0xFF823B00),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "JOIN OUR",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                ),
                const Text("Orphan Savers",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
                const Text("Community",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
                const SizedBox(height: 30),
                Image.asset('assets/images/empathy.png', height: 50, width: 50)
              ],
            ),
          ),
          // back of the card
          back: Container(
            alignment: Alignment.center,
            width: 180,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(10)),
            child: const Text("Back"),
          ),
        ),
        const SizedBox(width: 50),
        FlipCard(
          direction: FlipDirection.HORIZONTAL,
          // front of the card
          front: Container(
            alignment: Alignment.center,
            width: 180,
            height: 250,
            decoration: BoxDecoration(
                color: const Color(0xFF823B00),
                borderRadius: BorderRadius.circular(10)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(
                  height: 20,
                ),
                const Text(
                  "BECOME A",
                  style: TextStyle(
                      color: Colors.orange,
                      fontWeight: FontWeight.normal,
                      fontSize: 20),
                ),
                const Text("Legacy",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
                const Text("Partner",
                    style: TextStyle(
                        color: Colors.orange,
                        fontWeight: FontWeight.normal,
                        fontSize: 20)),
                const SizedBox(height: 30),
                Image.asset('assets/images/housing.png', height: 50, width: 50)
              ],
            ),
          ),
          // back of the card
          back: Container(
            alignment: Alignment.center,
            width: 180,
            height: 250,
            decoration: BoxDecoration(
                color: Colors.orange, borderRadius: BorderRadius.circular(10)),
            child: const Text("Back"),
          ),
        ),
      ],
    );
  }
}
