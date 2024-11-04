import 'package:flutter/material.dart';

class KelolaAkunScreen extends StatelessWidget {
  const KelolaAkunScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Kelola Akun'),
        backgroundColor: Colors.blueGrey,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                color: Colors.purple[50],
                borderRadius: BorderRadius.circular(8.0),
              ),
              padding: const EdgeInsets.all(16.0),
              child: const Column(
                children: [
                  CircleAvatar(
                    radius: 50,
                    backgroundImage:
                        AssetImage('assets/me.jpg'), // Menggunakan AssetImage
                  ),
                  SizedBox(height: 16),
                  Text(
                    'Julpandi',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    'Universitas Teknologi Yogyakarta',
                    style: TextStyle(fontSize: 16, color: Colors.grey),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email',
                labelStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                hintText: 'Email',
                hintStyle: TextStyle(color: Colors.grey),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email tidak boleh kosong';
                }
                if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
                  return 'Format email tidak valid';
                }
                return null;
              },
            ),

            const SizedBox(height: 16),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nama',
                labelStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                hintText: 'Nama',
                hintStyle: TextStyle(color: Colors.grey),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),

            const SizedBox(height: 16),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Nomor Telepon',
                labelStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                hintText: 'Nomor Telepon',
                hintStyle: TextStyle(color: Colors.grey),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),

            const SizedBox(height: 16),

            TextFormField(
              decoration: InputDecoration(
                labelText: 'Alamat',
                labelStyle: const TextStyle(
                  fontSize: 16,
                  color: Colors.black,
                ),
                hintText: 'Alamat',
                hintStyle: TextStyle(color: Colors.grey),
                floatingLabelBehavior: FloatingLabelBehavior.always,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(10),
                  borderSide: BorderSide(color: Colors.blue, width: 2),
                ),
                contentPadding:
                    EdgeInsets.symmetric(vertical: 16, horizontal: 24),
              ),
            ),

            const SizedBox(height: 20),
            // Submit Button
            Center(
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan logika untuk menyimpan perubahan profil di sini
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                  padding:
                      const EdgeInsets.symmetric(horizontal: 100, vertical: 20),
                ),
                child: const Text('Ubah Profil'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
