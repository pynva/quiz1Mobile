import 'package:flutter/material.dart';
import 'main.dart';
import 'widgets/custom_text.dart';
import 'widgets/primary_button.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: CustomText(text: 'Register Mahasiswa'),
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(24.0),
        child: Column(
          children: [
            CustomText(
              text: 'Selamat Datang Pendatang Baru',
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),
            const SizedBox(height: 8),
            CustomText(
              text: 'Silakan isi Email dan Password Anda',
              fontSize: 14,
              color: Colors.grey,
            ),
            const SizedBox(height: 24),

            const TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'Masukkan Email Anda',
                prefixIcon: Icon(Icons.email, color: Colors.indigo),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 16),

            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: 'Password',
                hintText: 'Masukkan Password',
                prefixIcon: Icon(Icons.lock, color: Colors.indigo),
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 24),

            SizedBox(
              width: double.infinity,
              child: PrimaryButton(
                label: 'Register & Masuk ke Home',
                icon: Icons.login,
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MyHomePage(title: 'Home'),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}