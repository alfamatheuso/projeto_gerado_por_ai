import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);
    controller.loadPosts();

    return Scaffold(
      appBar: AppBar(
        title: Text('Social App'),
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.notifications)),
          IconButton(onPressed: () {}, icon: Icon(Icons.message)),
        ],
      ),
      body: ListView.builder(
        itemCount: controller.posts.length,
        itemBuilder: (context, index) {
          return PostCard(post: controller.posts[index]);
        },
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.currentIndex,
        onTap: controller.changePage,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Explorar'),
          BottomNavigationBarItem(icon: Icon(Icons.add_box), label: 'Postar'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'Curtidas'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Perfil'),
        ],
      ),
    );
  }
}