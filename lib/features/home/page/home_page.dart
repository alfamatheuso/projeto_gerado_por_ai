import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../controller/home_controller.dart';
import 'components/post_widget.dart';
import '../model/user_model.dart';

class HomePage extends StatelessWidget {
  HomePage({Key? key}) : super(key: key);

  final List<UserModel> users = [
    UserModel(id: '1', name: 'João Silva', avatarUrl: 'https://randomuser.me/api/portraits/men/1.jpg'),
    UserModel(id: '2', name: 'Maria Oliveira', avatarUrl: 'https://randomuser.me/api/portraits/women/2.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    final controller = Provider.of<HomeController>(context);

    return Scaffold(
      appBar: AppBar(
        title: Text('SocialApp', style: TextStyle(fontWeight: FontWeight.bold)),
        actions: [
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: controller.openNotifications,
          ),
          IconButton(
            icon: Icon(Icons.message_outlined),
            onPressed: controller.openMessages,
          ),
        ],
      ),
      body: ListView(
        children: [
          PostWidget(
            user: users[0],
            postContent: 'Dia lindo na praia, curtindo o sol!',
            postImage: 'https://source.unsplash.com/random/800x600?beach',
          ),
          PostWidget(
            user: users[1],
            postContent: 'Café da manhã saudável para começar bem o dia!',
            postImage: 'https://source.unsplash.com/random/800x600?food',
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: controller.createPost,
        child: Icon(Icons.add),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: controller.selectedIndex,
        onTap: controller.onTabSelected,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home_outlined), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Buscar'),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: 'Perfil'),
        ],
      ),
    );
  }
}