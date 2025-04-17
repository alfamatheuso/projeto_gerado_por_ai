class HomeRepository {
  Future<List<Map<String, dynamic>>> fetchPosts() async {
    await Future.delayed(Duration(seconds: 1));
    return [
      {
        'userId': '1',
        'postContent': 'Dia lindo na praia, curtindo o sol!',
        'postImage': 'https://source.unsplash.com/random/800x600?beach'
      },
      {
        'userId': '2',
        'postContent': 'Café da manhã saudável para começar bem o dia!',
        'postImage': 'https://source.unsplash.com/random/800x600?food'
      },
    ];
  }
}