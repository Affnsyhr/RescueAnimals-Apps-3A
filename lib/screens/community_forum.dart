import 'package:flutter/material.dart';

class CommunityForumScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Community Forum'),
      ),
      body: ListView.builder(
        itemCount: 10, // Ganti dengan jumlah thread yang ada
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.forum),
            title: Text('Thread ${index + 1}'),
            subtitle: Text('Deskripsi singkat tentang thread ini'),
            trailing: ElevatedButton(
              onPressed: () {
                // Tambahkan logika untuk melihat detail thread
              },
              child: Text('Join'),
            ),
          );
        },
      ),
    );
  }
}
