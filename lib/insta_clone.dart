import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Instagram Clone',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: InstagramHomePage(),
    );
  }
}

class InstagramHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Instagram'),
        actions: [
          IconButton(
            icon: Icon(Icons.camera_alt),
            onPressed: () {
              // Implement camera functionality
            },
          ),
          IconButton(
            icon: Icon(Icons.send),
            onPressed: () {
              // Implement direct messages functionality
            },
          ),
        ],
      ),
      body: InstagramFeed(),
    );
  }
}

class InstagramFeed extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10, // Replace with the actual number of posts
      itemBuilder: (context, index) {
        return InstagramPost();
      },
    );
  }
}

class InstagramPost extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Post Header
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              CircleAvatar(
                radius: 20.0,
                // Replace with the user's profile image
                backgroundImage: AssetImage('assets/profile_image.jpg'),
              ),
              SizedBox(width: 8.0),
              Text(
                'username',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Spacer(),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {
                  // Add more options like delete or report
                },
              ),
            ],
          ),
          // Post Image
          Image.asset(
            'assets/post_image.jpg',
            height: 300.0,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          // Post Actions
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  IconButton(
                    icon: Icon(Icons.favorite_border),
                    onPressed: () {
                      // Implement like functionality
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.comment),
                    onPressed: () {
                      // Implement comment functionality
                    },
                  ),
                  IconButton(
                    icon: Icon(Icons.send),
                    onPressed: () {
                      // Implement direct message functionality
                    },
                  ),
                ],
              ),
              IconButton(
                icon: Icon(Icons.bookmark_border),
                onPressed: () {
                  // Implement save post functionality
                },
              ),
            ],
          ),
          // Like Count
          Text(
            '1,234 likes',
            style: TextStyle(fontWeight: FontWeight.bold),
          ),
          // Caption
          Text(
            'This is the caption for the post. #Flutter #InstagramClone',
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          // View Comments
          GestureDetector(
            onTap: () {
              // Implement view comments functionality
            },
            child: Text(
              'View all 123 comments',
              style: TextStyle(color: Colors.grey),
            ),
          ),
          // Timestamp
          Text(
            '2 hours ago',
            style: TextStyle(color: Colors.grey),
          ),
        ],
      ),
    );
  }
}
