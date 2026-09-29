import 'package:flutter/material.dart';
import 'profile.dart';
import 'widgets/custom_text.dart';
import 'widgets/primary_button.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: const CustomText(text: 'Home'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const CustomText(
              text: 'Halaman Utama (Home)',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 24),
            PrimaryButton(
              label: 'Lihat Profile Mahasiswa',
              icon: Icons.person,
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const ProfileScreen()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}