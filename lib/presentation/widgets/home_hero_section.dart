import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class HeroSection extends StatelessWidget {
  const HeroSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    return Container(
      height: 500,
      width: double.infinity,
      decoration: BoxDecoration(
        color: AppTheme.primaryColor,
        image: DecorationImage(
          image: const NetworkImage('https://images.unsplash.com/photo-1586528116311-ad8ed7c83a7f?q=80&w=2000&auto=format&fit=crop'),
          fit: BoxFit.cover,
          colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.6), BlendMode.darken),
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            'Delivering Excellence,\\nAcross the Globe.',
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: width > 800 ? 56 : 36,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              height: 1.2,
            ),
          ),
          const SizedBox(height: 20),
          const Text(
            'Fast, secure, and reliable logistics solutions for your business.',
            style: TextStyle(fontSize: 18, color: Colors.white70),
          ),
          const SizedBox(height: 40),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),
            onPressed: () {},
            child: const Text('Explore Our Services', style: TextStyle(fontSize: 18)),
          ),
        ],
      ),
    );
  }
}

// Floating search bar that slightly overlaps the hero image for a modern look
class TrackShipmentSection extends StatelessWidget {
  const TrackShipmentSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: const Offset(0, -50),
      child: Center(
        child: Container(
          width: MediaQuery.of(context).size.width > 800 ? 800 : MediaQuery.of(context).size.width * 0.9,
          padding: const EdgeInsets.all(30),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
            boxShadow: [
              BoxShadow(color: Colors.black.withOpacity(0.1), blurRadius: 20, offset: const Offset(0, 10)),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Track Your Shipment', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
              const SizedBox(height: 20),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Enter Tracking Number (e.g. CHW123456789)',
                        border: OutlineInputBorder(borderRadius: BorderRadius.circular(8)),
                        prefixIcon: const Icon(Icons.search),
                      ),
                    ),
                  ),
                  const SizedBox(width: 16),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppTheme.primaryColor,
                      padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                    ),
                    onPressed: () {},
                    child: const Text('TRACK', style: TextStyle(color: Colors.white)),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
