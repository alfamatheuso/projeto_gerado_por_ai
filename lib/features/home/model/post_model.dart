class PostModel {
  final String id;
  final UserModel user;
  final String content;
  final String imageUrl;
  final DateTime postedAt;
  final int likesCount;
  final int commentsCount;

  PostModel({
    required this.id,
    required this.user,
    required this.content,
    required this.imageUrl,
    required this.postedAt,
    required this.likesCount,
    required this.commentsCount,
  });
}