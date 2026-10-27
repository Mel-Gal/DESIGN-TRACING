import 'package:flutter/material.dart';

void main() {
  runApp(const WaterTrackerApp());
}

class WaterTrackerApp extends StatelessWidget {
  const WaterTrackerApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Water Tracker',
      theme: ThemeData(
        fontFamily: 'sans-serif',
        scaffoldBackgroundColor: const Color(0xFFF0F4F8),
      ),
      home: const WaterTrackerScreen(),
    );
  }
}

class WaterTrackerScreen extends StatelessWidget {
  const WaterTrackerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Exact color palette matching the UI design
    const primaryBlue = Color(0xFF3B6EDB);
    const dropIconColor = Color(0xFF3882F6);
    const numberBlue = Color(0xFF2050D0);
    const lightBannerColor = Color(0xFFDCEDFF);
    const darkTextColor = Color(0xFF1C2434);
    const mutedTextColor = Color(0xFF64748B);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: primaryBlue,
        elevation: 0,
        centerTitle: true,
        title: const Text(
          'Water Tracker',
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
            fontSize: 22,
          ),
        ),
      ),
      body: SafeArea(
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 16.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                // Water Drop Icon
                const Icon(
                  Icons.water_drop,
                  size: 96,
                  color: dropIconColor,
                ),
                const SizedBox(height: 12),

                // Main Title
                const Text(
                  'Stay Hydrated!',
                  style: TextStyle(
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    color: darkTextColor,
                    letterSpacing: -0.5,
                  ),
                ),
                const SizedBox(height: 6),

                // Subtitle
                const Text(
                  'Build a healthy daily habit',
                  style: TextStyle(
                    fontSize: 18,
                    color: mutedTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 28),

                // Daily Goal Card
                Container(
                  width: double.infinity,
                  padding: const EdgeInsets.symmetric(vertical: 32.0, horizontal: 20.0),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(24),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.03),
                        blurRadius: 12,
                        offset: const Offset(0, 4),
                      ),
                    ],
                  ),
                  child: Column(
                    children: const [
                      Text(
                        'Daily Water Goal',
                        style: TextStyle(
                          fontSize: 22,
                          fontWeight: FontWeight.bold,
                          color: darkTextColor,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        '8',
                        style: TextStyle(
                          fontSize: 88,
                          fontWeight: FontWeight.bold,
                          color: numberBlue,
                          height: 1.0,
                        ),
                      ),
                      SizedBox(height: 12),
                      Text(
                        'glasses per day',
                        style: TextStyle(
                          fontSize: 18,
                          color: mutedTextColor,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 20),

                // Action Banner 1
                _buildInfoBanner(
                  text: 'Drink water regularly',
                  bgColor: lightBannerColor,
                  textColor: numberBlue,
                ),
                const SizedBox(height: 14),

                // Action Banner 2
                _buildInfoBanner(
                  text: 'Bring your water bottle',
                  bgColor: lightBannerColor,
                  textColor: numberBlue,
                ),
                const SizedBox(height: 24),

                // Footer Text
                const Text(
                  'Every glass counts!',
                  style: TextStyle(
                    fontSize: 16,
                    color: mutedTextColor,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // Reusable widget for the light blue recommendation buttons
  Widget _buildInfoBanner({
    required String text,
    required Color bgColor,
    required Color textColor,
  }) {
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.symmetric(vertical: 18.0),
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Text(
        text,
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: textColor,
        ),
      ),
    );
  }
}