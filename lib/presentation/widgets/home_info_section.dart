import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class WhyChooseUsSection extends StatelessWidget {
  const WhyChooseUsSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        children: [
          const Text('Why Choose Chowra Logistics', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 40),
          Wrap(
            spacing: 40,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: const [
              _FeatureWidget(Icons.security, 'Secure Handling', 'Your packages are insured and handled with extreme care.'),
              _FeatureWidget(Icons.speed, 'Fast Delivery', 'Optimized routing to ensure the fastest delivery times.'),
              _FeatureWidget(Icons.support_agent, '24/7 Support', 'Dedicated customer service ready to assist you anytime.'),
            ],
          )
        ],
      ),
    );
  }
}

class _FeatureWidget extends StatelessWidget {
  final IconData icon;
  final String title;
  final String desc;
  const _FeatureWidget(this.icon, this.title, this.desc);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 300,
      child: Column(
        children: [
          CircleAvatar(
            radius: 40, 
            backgroundColor: AppTheme.primaryColor.withOpacity(0.1), 
            child: Icon(icon, size: 40, color: AppTheme.primaryColor)
          ),
          const SizedBox(height: 20),
          Text(title, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Text(desc, textAlign: TextAlign.center, style: TextStyle(color: Colors.grey[600])),
        ],
      ),
    );
  }
}

class CustomerPartnerSection extends StatelessWidget {
  const CustomerPartnerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        children: [
          const Text('Trusted By Industry Leaders', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.grey)),
          const SizedBox(height: 30),
          Wrap(
            spacing: 40,
            runSpacing: 20,
            alignment: WrapAlignment.center,
            children: List.generate(5, (index) => const Icon(Icons.business_center, size: 60, color: Colors.grey)),
          )
        ],
      ),
    );
  }
}

class CallToActionSection extends StatelessWidget {
  const CallToActionSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppTheme.secondaryColor,
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        children: [
          const Text('Ready to ship with us?', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 20),
          const Text('Open an account today and get 15% off your first shipment.', style: TextStyle(fontSize: 18, color: Colors.white)),
          const SizedBox(height: 30),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.white,
              foregroundColor: AppTheme.secondaryColor,
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
            ),
            onPressed: () {},
            child: const Text('Create an Account', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          ),
        ],
      ),
    );
  }
}
