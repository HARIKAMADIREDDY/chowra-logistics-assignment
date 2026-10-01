import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class AppFooter extends StatelessWidget {
  const AppFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppTheme.primaryColor,
      padding: const EdgeInsets.all(40),
      child: Column(
        children: [
          Wrap(
            spacing: 100,
            runSpacing: 40,
            alignment: WrapAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('CHOWRA LOGISTICS', style: TextStyle(color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text('123 Logistics Avenue\\nBusiness Park, NY 10001', style: TextStyle(color: Colors.white70)),
                  SizedBox(height: 10),
                  Text('Email: info@chowralogistics.com', style: TextStyle(color: Colors.white70)),
                  Text('Phone: +1 800 123 4567', style: TextStyle(color: Colors.white70)),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text('Quick Links', style: TextStyle(color: Colors.white, fontSize: 18, fontWeight: FontWeight.bold)),
                  SizedBox(height: 20),
                  Text('Track Shipment', style: TextStyle(color: Colors.white70)),
                  SizedBox(height: 10),
                  Text('Get a Quote', style: TextStyle(color: Colors.white70)),
                  SizedBox(height: 10),
                  Text('Our Services', style: TextStyle(color: Colors.white70)),
                  SizedBox(height: 10),
                  Text('Careers', style: TextStyle(color: Colors.white70)),
                ],
              )
            ],
          ),
          const SizedBox(height: 40),
          const Divider(color: Colors.white24),
          const SizedBox(height: 20),
          const Text('© 2024 Chowra Logistics and Couriers Limited. All Rights Reserved.', style: TextStyle(color: Colors.white54)),
        ],
      ),
    );
  }
}
