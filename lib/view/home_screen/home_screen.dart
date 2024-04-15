import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/images_constants.dart';
import 'package:threads_clone_app/view/dummydb.dart';
import 'package:threads_clone_app/view/home_screen/widgets/user_posts_container.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Image.asset(
            ImagessConstants.appIcon
            ),
            ),
      body: SafeArea(
        child: 
        SingleChildScrollView(
          child: Column(
            children: [
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                itemCount: dummydb.homePostsList.length,
                itemBuilder: (context, index) => CustomPostsContainer(
                  userName: dummydb.homePostsList[index]["userName"].toString(),
                  // location: DummyDb.homePostsList[index]["location"].toString(),
                  postImagesList: dummydb.homePostsList[index]["posts"],
                  proPic: dummydb.homePostsList[index]["proPic"].toString(),
                  caption: dummydb.homePostsList[index]["caption"].toString(),
                  isLiked: dummydb.homePostsList[index]["liked"],
                ),
              )
            ],
          ),
        )
        ),
    );
  }
}