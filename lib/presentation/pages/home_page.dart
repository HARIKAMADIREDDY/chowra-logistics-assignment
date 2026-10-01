import 'package:flutter/material.dart';
import '../widgets/app_header.dart';
import '../widgets/app_footer.dart';
import '../widgets/home_hero_section.dart';
import '../widgets/home_services_section.dart';
import '../widgets/home_info_section.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const ResponsiveAppBar(),
      // Main scrollable area containing all landing page sections
      body: SingleChildScrollView(
        child: Column(
          children: const [
            HeroSection(),
            TrackShipmentSection(),
            ServicesSection(),
            ServiceCoverageSection(),
            RateCalculatorSection(),
            WhyChooseUsSection(),
            CustomerPartnerSection(),
            CallToActionSection(),
            AppFooter(),
          ],
        ),
      ),
    );
  }
}
