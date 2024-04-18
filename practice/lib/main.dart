import 'package:flutter/material.dart';
import 'package:practice/pages/profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
  options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MusicApp());
}

class MusicApp extends StatelessWidget {
  const MusicApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Music App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const FindPage(),
    );
  }
}

class FindPage extends StatelessWidget {
  const FindPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Find Music'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Container(
            padding: const EdgeInsets.all(16.0),
            color: const Color.fromARGB(255, 150, 39, 39),
            child: DropdownButton<String>(
              items: <String>['Pops', 'Rock', 'Electonic', 'Classical']
                  .map((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
              onChanged: (String? newValue) {
                // Handle category selection
              },
              hint: const Text('Select a category'),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: const Icon(Icons.music_note),
                  title: Text('Music Title $index'),
                  subtitle: const Text('Composer: Composer Name, Length: 3:45, Upload Date: 01/01/2022'),
                  trailing: IconButton(
                    icon: const Icon(Icons.play_arrow),
                    onPressed: () {
                      // Play music
                    },
                  ),
                );
              },
            ),
          ),
          Container(
            padding: const EdgeInsets.all(16.0),
            color: Colors.grey[200],
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                IconButton(
                  icon: const Icon(Icons.search),
                  onPressed: () {
                    // Navigate to find page
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.home),
                  onPressed: () {
                    // Navigate to home page
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.person),
                  onPressed: () {
                    // Navigate to me page
                    Navigator.push(context, MaterialPageRoute(builder: (context) => const ProfilePage()));

                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
