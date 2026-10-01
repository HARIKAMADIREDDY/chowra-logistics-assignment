import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class ServicesSection extends StatelessWidget {
  const ServicesSection({super.key});

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;
    int crossAxisCount = width > 1000 ? 3 : (width > 600 ? 2 : 1);

    final services = [
      {'icon': Icons.flight_takeoff, 'title': 'Domestic & Int. Courier', 'desc': 'Global reach with local expertise.'},
      {'icon': Icons.local_shipping, 'title': 'Express Delivery', 'desc': 'Time-critical deliveries handled securely.'},
      {'icon': Icons.shopping_cart, 'title': 'E-commerce Logistics', 'desc': 'End-to-end solutions for online retail.'},
      {'icon': Icons.directions_boat, 'title': 'Freight & Cargo', 'desc': 'Sea, air, and land freight forwarding.'},
      {'icon': Icons.door_front_door, 'title': 'Pickup & Door-to-Door', 'desc': 'Convenient from origin to destination.'},
      {'icon': Icons.business, 'title': 'Corporate Solutions', 'desc': 'Tailored logistics for enterprises.'},
    ];

    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 60, horizontal: 20),
      child: Column(
        children: [
          const Text('Our Core Services', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          Container(width: 60, height: 4, color: AppTheme.secondaryColor),
          const SizedBox(height: 40),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 1200),
            child: GridView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: crossAxisCount,
                childAspectRatio: 1.5,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
              ),
              itemCount: services.length,
              itemBuilder: (context, index) {
                return Card(
                  elevation: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(services[index]['icon'] as IconData, size: 40, color: AppTheme.primaryColor),
                        const SizedBox(height: 16),
                        Text(services[index]['title'] as String, style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                        const SizedBox(height: 8),
                        Text(services[index]['desc'] as String, style: TextStyle(color: Colors.grey[600])),
                      ],
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}

class ServiceCoverageSection extends StatelessWidget {
  const ServiceCoverageSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppTheme.primaryColor,
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: Column(
        children: [
          const Text('Global Network Coverage', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold, color: Colors.white)),
          const SizedBox(height: 40),
          Wrap(
            spacing: 60,
            runSpacing: 40,
            alignment: WrapAlignment.center,
            children: const [
              _StatWidget('150+', 'Countries Served'),
              _StatWidget('10,000+', 'Daily Deliveries'),
              _StatWidget('500+', 'Global Warehouses'),
              _StatWidget('99.9%', 'On-Time Rate'),
            ],
          )
        ],
      ),
    );
  }
}

class _StatWidget extends StatelessWidget {
  final String value;
  final String label;
  const _StatWidget(this.value, this.label);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(value, style: const TextStyle(fontSize: 48, fontWeight: FontWeight.bold, color: AppTheme.secondaryColor)),
        Text(label, style: const TextStyle(fontSize: 18, color: Colors.white70)),
      ],
    );
  }
}

class RateCalculatorSection extends StatelessWidget {
  const RateCalculatorSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 80, horizontal: 20),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 800),
        child: Column(
          children: [
            const Text('Quick Rate Calculator', style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold)),
            const SizedBox(height: 30),
            Card(
              elevation: 4,
              child: Padding(
                padding: const EdgeInsets.all(30.0),
                child: Column(
                  children: [
                    Row(
                      children: const [
                        Expanded(child: TextField(decoration: InputDecoration(labelText: 'Origin City/ZIP', border: OutlineInputBorder()))),
                        SizedBox(width: 20),
                        Expanded(child: TextField(decoration: InputDecoration(labelText: 'Destination City/ZIP', border: OutlineInputBorder()))),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      children: [
                        const Expanded(child: TextField(decoration: InputDecoration(labelText: 'Weight (KG)', border: OutlineInputBorder()))),
                        const SizedBox(width: 20),
                        Expanded(
                          child: DropdownButtonFormField<String>(
                            decoration: const InputDecoration(border: OutlineInputBorder(), labelText: 'Package Type'),
                            items: ['Document', 'Parcel', 'Freight'].map((String value) {
                              return DropdownMenuItem<String>(value: value, child: Text(value));
                            }).toList(),
                            onChanged: (_) {},
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 30),
                    SizedBox(
                      width: double.infinity,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(padding: const EdgeInsets.all(20)),
                        onPressed: () {},
                        child: const Text('Calculate Cost', style: TextStyle(fontSize: 18)),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
