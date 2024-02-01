import 'package:flutter/material.dart';
import 'package:cached_network_image/cached_network_image.dart';

class AccountTab extends StatelessWidget {
  const AccountTab({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 120),
            _buildProfilePicture(),
            _buildUserInfo(),
            _buildItemList(),
          ],
        ),
      ),
    );
  }

  Widget _buildProfilePicture() {
    return Container(
      color: Colors.green,
      height: 100.0,
      width: 100.0,
      child: CachedNetworkImage(
        imageUrl: 'https://example.com/your_image.jpg',
        fit: BoxFit.cover,
        placeholder: (context, url) => const CircularProgressIndicator(),
        errorWidget: (context, url, error) => const Icon(Icons.error),
      ),
    );
  }

  Widget _buildUserInfo() {
    return const Column(
      children: [
        SizedBox(height: 20.0),
        Text(
          'Your Title',
          style: TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 10.0),
        Text(
          'Your Description',
          style: TextStyle(
            fontSize: 16.0,
          ),
        ),
        SizedBox(height: 20.0),
      ],
    );
  }

  Widget _buildItemList() {
    return Expanded(
      child: ListView(
        children: [
          ListTile(
            leading: Icon(Icons.star),
            title: Text('Interests'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {
              print('Interests tapped');
            },
          ),
          ListTile(
            leading: Icon(Icons.notifications),
            title: Text('Notifications'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.payment),
            title: Text('My NTFs'),
            trailing: Icon(Icons.arrow_right),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Log Out'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
