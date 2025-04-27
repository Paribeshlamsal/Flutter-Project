import 'package:flutter/material.dart';

class AppleMusicDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Apple Music'), backgroundColor: Colors.black),
      body: Column(
        children: [
          // Header Section
          Container(
            padding: EdgeInsets.all(16),
            color: Colors.black,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Listen Now',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Discover new music and playlists',
                  style: TextStyle(color: Colors.grey, fontSize: 16),
                ),
              ],
            ),
          ),
          // Playlist Section
          Expanded(
            child: ListView(
              children: [
                buildPlaylistItem(
                  'Top Hits',
                  'assets/images/top_hits.jpg',
                  'The best songs right now',
                ),
                buildPlaylistItem(
                  'Chill Vibes',
                  'assets/images/chill_vibes.webp',
                  'Relax and unwind',
                ),
                buildPlaylistItem(
                  'Workout Mix',
                  'assets/images/workout_mix.jpg',
                  'Get pumped up',
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.grey,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Listen Now',
          ),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Browse'),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_music),
            label: 'Library',
          ),
        ],
      ),
    );
  }

  Widget buildPlaylistItem(String title, String imagePath, String subtitle) {
    return ListTile(
      leading: Image.asset(imagePath, width: 50, height: 50, fit: BoxFit.cover),
      title: Text(title, style: TextStyle(color: Colors.white)),
      subtitle: Text(subtitle, style: TextStyle(color: Colors.grey)),
      tileColor: Colors.black,
      contentPadding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
    );
  }
}

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: AppleMusicDesign(),
    ),
  );
}
