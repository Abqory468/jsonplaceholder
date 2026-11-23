import 'package:flutter/material.dart';
import 'package:jsonplaceholder/pages/tabs/albums_tab.dart';
import 'package:jsonplaceholder/pages/tabs/comments_tab.dart';
import 'package:jsonplaceholder/pages/tabs/photos_tab.dart';
import 'package:jsonplaceholder/pages/tabs/posts_tab.dart';
import 'package:jsonplaceholder/pages/tabs/todos_tab.dart';
import 'package:jsonplaceholder/pages/tabs/users_tab.dart';


class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          title: Text('JSONPlaceholder API'),
          bottom: TabBar(
            tabs: [
              Tab(text: 'Posts', icon: Icon(Icons.article_outlined),),
              Tab(text: 'Comments', icon: Icon(Icons.comment_outlined),),
              Tab(text: 'Albums', icon: Icon(Icons.photo_album_outlined),),
              Tab(text: 'Photos', icon: Icon(Icons.photo_outlined),),
              Tab(text: 'Todos', icon: Icon(Icons.task_outlined),),
              Tab(text: 'Users', icon: Icon(Icons.people_alt_outlined),),
            ],
          ),
        ),

        body: TabBarView(children: [
          PostsTab(),
          CommentsTab(),
          AlbumsTab(),
          PhotosTab(),
          TodosTab(),
          UsersTab(),
        ],),
      ),
    );
  }
}