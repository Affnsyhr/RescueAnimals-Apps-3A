import 'package:flutter/material.dart';

class LostAndFoundScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lost and Found'),
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah laporan yang ada
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.pets),
            title: Text('Laporan Kehilangan ${index + 1}'),
            subtitle: Text('Deskripsi singkat tentang laporan ini'),
            trailing: ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk melihat detail laporan
              },
              child: Text('Detail'),
            ),
          );
        },
      ),
    );
  }
}
