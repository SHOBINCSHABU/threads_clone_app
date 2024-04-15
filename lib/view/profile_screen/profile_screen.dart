import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/colors_constants.dart';
import 'package:threads_clone_app/core/constants/images_constants.dart';
import 'package:threads_clone_app/view/dummydb.dart';
import 'package:threads_clone_app/view/profile_screen/widgets/profile_screen_post.dart';


class Profilescreen extends StatefulWidget {
  const Profilescreen({super.key});

  @override
  State<Profilescreen> createState() => _ProfilescreenState();
}

class _ProfilescreenState extends State<Profilescreen> {
  var currentTabIndex = 0;
  

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(onPressed: () {}, icon: Icon(Icons.language, size: 30,)),
          actions: [
            IconButton(
              onPressed: () {},
              icon: Icon(Icons.menu, size: 30,),
            )
          ],
        ),
        body: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                ),
                ListTile(
                  title: Text("Shobin C Shabu"),
                  subtitle: Text("_.punyalan._"),
                  contentPadding: EdgeInsets.all(0),
                  trailing: CircleAvatar(
                  radius: 35,
                  backgroundImage: AssetImage(
                      ImagessConstants.shobinProfilePhoto),
                        ),
                      ),
                      Text(
                      "I'M NOT PERFEST BUT I'M LIMITED EDITION \n... FIRST CRY on 04 April... \n... Own RúĽÊś....",
            ),
            Padding(
              padding: const EdgeInsets.only(top: 15.0),
              child: Text("130 Followers",
              style: TextStyle(color: ColorConstants.primaryGrey),),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      alignment: Alignment.center,
                      width: 150,
                      height: 30,
                      decoration: BoxDecoration(
                        border: Border.all(color: ColorConstants.primaryGrey),
                        borderRadius: BorderRadius.circular(8)
                      ),
                      child: Text("Edit Profile"),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: InkWell(
                      onTap: () {},
                      child: Container(
                        alignment: Alignment.center,
                        width: 150,
                        height: 30,
                        decoration: BoxDecoration(
                          border: Border.all(color: ColorConstants.primaryGrey),
                          borderRadius: BorderRadius.circular(8)
                        ),
                        child: Text("Share Profile"),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 25,),
            TabBar(
              labelColor: ColorConstants.primaryBlack,
              indicatorColor: ColorConstants.primaryBlack,
              tabs: [
                Tab(text: "Threads"),
                Tab(text: "Replies",)
              ]),
              Expanded(
                  child: TabBarView(
                    children: [
                      SingleChildScrollView(
                        physics: AlwaysScrollableScrollPhysics(),
                        child: ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: dummydb.profilePostsList.length,
                          itemBuilder: (context, index) => UserPostsContainer(
                            userName: dummydb.profilePostsList[index]["userName"].toString(),
                            proPic: dummydb.profilePostsList[index]["proPic"],
                            caption: dummydb.profilePostsList[index]["caption"].toString(),
                            isLiked: dummydb.profilePostsList[index]["liked"],
                            postImagesList: dummydb.profilePostsList[index]["posts"],
                          ),
                        ),
                      ),
                      Center(
                        child: Text("Your reply here"),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}