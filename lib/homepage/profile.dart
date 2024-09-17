import 'package:flutter/material.dart';

class ProfileApp extends StatefulWidget {
  const ProfileApp({super.key});

  @override
  _ProfileAppState createState() => _ProfileAppState();
}

class _ProfileAppState extends State<ProfileApp> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        centerTitle: true, // Center the title
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center, // Center the column content
          children: <Widget>[
            const SizedBox(height: 16),
            CircleAvatar(
              radius: 50, // Adjust the size as needed
              backgroundImage: AssetImage('assets/cat.jpg'), // Replace with your image path
              backgroundColor: Colors.transparent,
              child: Align(
                alignment: Alignment.bottomRight,
                child: Container(
                  padding: const EdgeInsets.all(2.0), // Border width
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 4),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 12),
            Text(
              'Anonymous',
              style: Theme.of(context).textTheme.headline5?.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
              ),
            ),
            const SizedBox(height: 4),
            Text(
              'anonim@gmail.com',
              style: Theme.of(context).textTheme.subtitle1?.copyWith(
                color: Colors.grey[600],
              ),
            ),
            const SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                '',
                style: Theme.of(context).textTheme.headline6?.copyWith(
                  fontWeight: FontWeight.bold,
                  color: Colors.black87,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Text(
              'Bismillah',
              style: Theme.of(context).textTheme.bodyText2?.copyWith(
                color: Colors.black54,
              ),
            ),
            const SizedBox(height: 24),
            // ElevatedButton(
            //   onPressed: () {
            //     // Tambahkan aksi tombol di sini
            //   },
            //   child: const Text('Edit Profile'),
            // ),
          ],
        ),
      ),
    );
  }
}

extension on TextTheme {
  TextStyle? get bodyText2 => TextStyle(fontSize: 16.0, fontFamily: 'Roboto');

  TextStyle? get headline6 => TextStyle(fontSize: 20.0, fontFamily: 'Roboto');

  TextStyle? get subtitle1 => TextStyle(fontSize: 16.0, fontFamily: 'Roboto');

  TextStyle? get headline5 => TextStyle(fontSize: 24.0, fontFamily: 'Roboto');
}
