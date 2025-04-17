import 'package:flutter/material.dart';

class HomeController extends ChangeNotifier {
  int currentIndex = 0;

  void changePage(int index) {
    currentIndex = index;
    notifyListeners();
  }

  List<PostModel> posts = [];

  void loadPosts() {
    posts = [
      PostModel(
        id: '1',
        user: UserModel(
          id: '10',
          username: 'john_doe',
          profilePicture: 'https://example.com/profile1.jpg',
          bio: 'Software developer and Flutter enthusiast',
        ),
        content: 'Explorando Flutter MVC!',
        imageUrl: 'https://example.com/post1.jpg',
        postedAt: DateTime.now().subtract(Duration(hours: 2)),
        likesCount: 120,
        commentsCount: 25,
      ),
      PostModel(
        id: '2',
        user: UserModel(
          id: '11',
          username: 'jane_doe',
          profilePicture: 'https://example.com/profile2.jpg',
          bio: 'UI/UX Designer',
        ),
        content: 'Criando interfaces elegantes!',
        imageUrl: 'https://example.com/post2.jpg',
        postedAt: DateTime.now().subtract(Duration(hours: 4)),
        likesCount: 95,
        commentsCount: 10,
      ),
    ];
    notifyListeners();
  }
}