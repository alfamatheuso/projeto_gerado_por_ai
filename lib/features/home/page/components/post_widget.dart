import 'package:flutter/material.dart';
import '../../model/user_model.dart';

class PostWidget extends StatelessWidget {
  final UserModel user;
  final String postContent;
  final String postImage;

  const PostWidget({
    Key? key,
    required this.user,
    required this.postContent,
    required this.postImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.symmetric(vertical: 10, horizontal: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            leading: CircleAvatar(
              backgroundImage: NetworkImage(user.avatarUrl),
            ),
            title: Text(user.name, style: TextStyle(fontWeight: FontWeight.bold)),
            subtitle: Text('há 2 horas'),
            trailing: Icon(Icons.more_horiz),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            child: Text(postContent),
          ),
          if (postImage.isNotEmpty)
            Image.network(postImage, width: double.infinity, fit: BoxFit.cover),
          ButtonBar(
            alignment: MainAxisAlignment.spaceAround,
            children: [
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.thumb_up_alt_outlined),
                label: Text('Curtir'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.comment_outlined),
                label: Text('Comentar'),
              ),
              TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.share_outlined),
                label: Text('Compartilhar'),
              ),
            ],
          )
        ],
      ),
    );
  }
}