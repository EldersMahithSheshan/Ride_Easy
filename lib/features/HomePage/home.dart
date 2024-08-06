import 'package:flutter/material.dart';
import 'package:ride_easy/features/BusShedule/busshedule.dart';
import 'package:ride_easy/features/BusTracking/bustracking.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: PreferredSize(
        preferredSize: const Size.fromHeight(100),
        child: Padding(
          padding: const EdgeInsets.only(top: 30, left: 20, right: 20),
          child: AppBar(
            backgroundColor: Colors.white,
            title: const Text(
              'Hello, User',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            actions: const [
              CircleAvatar(
                backgroundImage: NetworkImage(
                  'https://avatars.githubusercontent.com/u/210413',
                  scale: 1,
                ),
              )
            ],
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            const SizedBox(height: 16),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 10),
                  child: Text(
                    'Now',
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                ),
                Text(
                  'Colombo',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
                Icon(Icons.arrow_drop_down),
              ],
            ),
            const SizedBox(height: 32),
            Expanded(
              child: GridView.count(
                crossAxisCount: 2,
                crossAxisSpacing: 16,
                mainAxisSpacing: 16,
                children: [
                  _buildButton(
                    context: context,
                    title: 'Bus Tracking',
                    targetPage: const BusTrackingPage(),
                    image: const AssetImage('assets/images/track.png'),
                  ),
                  _buildButton(
                    context: context,
                    title: 'Bus Schedule',
                    image: const AssetImage('assets/images/shedule.png'),
                    targetPage: const BusSchedulePage(),
                  ),
                  _buildButton(
                    context: context,
                    title: 'Ticket Booking',
                    image: const AssetImage('assets/images/ticket.png'),
                    targetPage: const BusSchedulePage(),
                  ),
                  _buildButton(
                    context: context,
                    title: 'Bus Seat Reserve',
                    image: const AssetImage('assets/images/seat.png'),
                    targetPage: const BusSchedulePage(),
                  ),
                  _buildButton(
                    context: context,
                    title: 'Support',
                    image: const AssetImage('assets/images/support.png'),
                    targetPage: const BusSchedulePage(),
                  ),
                  _buildButton(
                    context: context,
                    title: 'Games',
                    image: const AssetImage('assets/images/games.png'),
                    targetPage: const BusSchedulePage(),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16),
            SizedBox(
              width: 80,
              height: 80,
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.red,
                  shape: const CircleBorder(),
                ),
                child: const Text(
                  'Safety',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildButton({
    required BuildContext context,
    required String title,
    required AssetImage image,
    required Widget targetPage,
  }) {
    return ElevatedButton(
      onPressed: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => targetPage),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.green,
        shadowColor: Colors.green,
        padding: const EdgeInsets.symmetric(
          vertical: 24,
          horizontal: 16,
        ),
        textStyle: const TextStyle(
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(10)),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image(image: image, height: 100, width: 160),
          const SizedBox(height: 1),
          Text(
            title,
            style: const TextStyle(color: Colors.white),
          ),
        ],
      ),
    );
  }
}
