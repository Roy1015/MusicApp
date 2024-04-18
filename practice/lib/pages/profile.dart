import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Profile Icon, User Name, User ID, Short Description, Registered Date
            const Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 40.0,
                  backgroundImage: NetworkImage('https://example.com/profile.jpg'), // Use your image URL
                ),
                SizedBox(width: 16.0),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'User Name',
                      style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                    ),
                    Text(
                      'User ID',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      'Short Description within 100 letters',
                      style: TextStyle(fontSize: 16.0),
                    ),
                    Text(
                      'Registered Date',
                      style: TextStyle(fontSize: 16.0),
                    ),
                  ],
                ),
              ],
            ),
            const SizedBox(height: 16.0),
            // Latest Music Uploaded
            const Text(
              'Latest Music Uploaded',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            // Display Latest Music Uploaded (Similar to Find Page)
            // Replace with your own logic to display music items
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 1, // Example count, replace with actual count
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Music Title'),
                  subtitle: Text('Composer, Length, Upload Date'),
                );
              },
            ),
            const SizedBox(height: 16.0),
            // Signature Musics
            const Text(
              'Signature Musics',
              style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
            ),
            // Display Signature Musics (Similar to Find Page)
            // Replace with your own logic to display music items
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 3, // Example count, replace with actual count
              itemBuilder: (context, index) {
                return const ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text('Music Title'),
                  subtitle: Text('Composer, Length, Upload Date'),
                );
              },
            ),
            SizedBox(height: 16.0),
            // Icons for SNS Accounts
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(
                  icon: const Icon(CupertinoIcons.today_fill),
                  onPressed: () {
                    // Navigate to fin  d page
                  },
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.app),
                  onPressed: () {
                    // Navigate to fin  d page
                  },
                ),
                IconButton(
                  icon: const Icon(CupertinoIcons.app_fill),
                  onPressed: () {
                    // Navigate to fin  d page
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
