import 'package:flutter/material.dart';
import 'mahasiswa/mahasiswa.dart';
import 'widgets/custom_text.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mhs = Mahasiswa(
      NIM: 3337240093,
      nama: 'Poppy Novita',
      alamat: 'Cilegon',
      email: 'poppy@example.com',
      IPK: 3.85,
      hobi: 'Membaca, Menulis, dan Bersepeda',
      telepon: 08123456789,
    );

    return Scaffold(
      appBar: AppBar(
        title: CustomText(text: 'Profile Mahasiswa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 4,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomText(
                  text: 'Informasi Mahasiswa',
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                const Divider(),
                const SizedBox(height: 8),
                CustomText(
                  text: mhs.getInfo(3337240093),
                  fontSize: 15,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}