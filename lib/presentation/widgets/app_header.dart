import 'package:flutter/material.dart';
import '../../core/theme/app_theme.dart';

class ResponsiveAppBar extends StatelessWidget implements PreferredSizeWidget {
  const ResponsiveAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    // Determine layout mode based on browser window width
    final isDesktop = MediaQuery.of(context).size.width > 800;

    return AppBar(
      backgroundColor: AppTheme.primaryColor,
      title: Row(
        children: const [
          Icon(Icons.local_shipping, color: AppTheme.secondaryColor, size: 32),
          SizedBox(width: 10),
          Text(
            'CHOWRA LOGISTICS',
            style: TextStyle(fontWeight: FontWeight.bold, letterSpacing: 1.5, color: Colors.white),
          ),
        ],
      ),
      actions: isDesktop
          ? [
              _navItem('Home'),
              _navItem('Services'),
              _navItem('Tracking'),
              _navItem('Network'),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
                child: ElevatedButton(
                  onPressed: () {},
                  child: const Text('Get a Quote'),
                ),
              )
            ]
          : [
              IconButton(
                icon: const Icon(Icons.menu, color: Colors.white),
                onPressed: () {},
              )
            ],
    );
  }

  Widget _navItem(String title) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Center(
        child: Text(
          title,
          style: const TextStyle(color: Colors.white, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
