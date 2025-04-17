import 'package:flutter/material.dart';

class PostCard extends StatelessWidget {
  final PostModel post;

  const PostCard({required this.post});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 2,
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(post.user.profilePicture),
            ),
            title: Text(post.user.username, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('${post.postedAt.hour}h atrás'),
          ),
          if (post.content.isNotEmpty)
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
              child: Text(post.content),
            ),
          if (post.imageUrl.isNotEmpty)
            Image.network(post.imageUrl, fit: BoxFit.cover),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Icon(Icons.favorite_border),
                    SizedBox(width: 5),
                    Text('${post.likesCount}'),
                  ],
                ),
                Row(
                  children: [
                    Icon(Icons.comment),
                    SizedBox(width: 5),
                    Text('${post.commentsCount}'),
                  ],
                ),
                Icon(Icons.share),
              ],
            ),
          ),
        ],
      ),
    );
  }
}