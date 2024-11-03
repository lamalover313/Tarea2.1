import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ProfileScreen(),
    );
  }
}

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const CircleAvatar(
              radius: 50,
              backgroundImage: NetworkImage(
                  'https://via.placeholder.com/150'), // Sustituye con tu URL de imagen
            ),
            const SizedBox(height: 10),
            const Text(
              'Coffeestories',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const Text(
              'mark.brock@icloud.com',
              style: TextStyle(color: Colors.grey),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.black,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              child: const Text('Edit profile'),
            ),
            const SizedBox(height: 20),
            const Divider(),
            const ListTile(
              leading: Icon(Icons.store),
              title: Text('My stores'),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 10,
                    backgroundColor: Colors.green,
                    child: Text(
                      '2',
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 16),
                ],
              ),
            ),
            const ListTile(
              leading: Icon(Icons.help),
              title: Text('Support'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.notifications),
              title: const Text('Push notifications'),
              trailing: Switch(value: true, onChanged: (bool newValue) {}),
            ),
            ListTile(
              leading: const Icon(Icons.face),
              title: const Text('Face ID'),
              trailing: Switch(value: true, onChanged: (bool newValue) {}),
            ),
            const ListTile(
              leading: Icon(Icons.lock),
              title: Text('PIN Code'),
              trailing: Icon(Icons.arrow_forward_ios, size: 16),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text('Logout', style: TextStyle(color: Colors.red)),
              onTap: () {
                // Acción de cierre de sesión
              },
            ),
          ],
        ),
      ),
    );
  }
}
