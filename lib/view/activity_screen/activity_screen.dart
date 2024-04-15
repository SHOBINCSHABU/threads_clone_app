import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/colors_constants.dart';

class ActivityScreen extends StatefulWidget {
  const ActivityScreen({super.key});

  @override
  State<ActivityScreen> createState() => _ActivityScreenState();
}

class _ActivityScreenState extends State<ActivityScreen> {
int currentIndexTab = 0;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: ColorConstants.primaryWhite,
          title: Text("Activity",
          style: TextStyle(
            color: ColorConstants.primaryBlack
          ),),
        bottom: PreferredSize(
            preferredSize: Size
            .fromHeight(AppBar().preferredSize.height), 
          child: Container(
            height: 44,
            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
            child: TabBar(
              labelColor: ColorConstants.primaryWhite,
              unselectedLabelColor: ColorConstants.primaryBlack,
              indicator: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: ColorConstants.primaryBlack
              ),
              onTap: (index) => setState(() => currentIndexTab = index),
              tabs: [
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: currentIndexTab == 0 
                      ? ColorConstants.transparent : 
                      ColorConstants.primaryGrey),
                      borderRadius: BorderRadius.circular(8.0)
                  ), 
                  child: Tab(text: "All",)),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: currentIndexTab == 1 
                      ? ColorConstants.transparent : 
                      ColorConstants.primaryGrey),
                      borderRadius: BorderRadius.circular(8.0)
                  ), 
                  child: Tab(text: "Replies",)),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: currentIndexTab == 2 
                      ? ColorConstants.transparent : 
                      ColorConstants.primaryGrey),
                      borderRadius: BorderRadius.circular(8.0)
                  ), 
                  child: Tab(text: "Mentions",)),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: currentIndexTab == 3 
                      ? ColorConstants.transparent : 
                      ColorConstants.primaryGrey),
                      borderRadius: BorderRadius.circular(8.0)
                  ), 
                  child: Tab(text: "Verified",),
                  ),
              ]),
          )),
        ),
        body: 
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TabBarView(
            children: [
              SingleChildScrollView(
                child: Column(
                  children: [
                    ListTile(
                      leading: CircleAvatar(
                        backgroundImage: NetworkImage(
                            "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=400"),
                      ),
                      title: Text("john dio"),
                      subtitle: Text("Followed you"),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Container(
                            alignment: Alignment.center,
                            width: 110,
                            height: 35,
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: ColorConstants.primaryGrey),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Text(
                              "Follow",
                              style: TextStyle(
                                  color: ColorConstants.primaryBlack),
                            ),
                          )
                        ],
                      ),
                    ),
                    Divider()
                  ],
                ),
              ),
              Center(child: Text("Nothing to see here yet")),
              Center(child: Text("Nothing to see here yet")),
              Center(child: Text("Nothing to see here yet")),
            ],
          ),
        ),
      ),
    );
  }
}

 //   bottom: PreferredSize(
        //     preferredSize: Size.fromHeight(40), 
        //     child: Container(
        //       padding: EdgeInsets.symmetric(vertical: 5),
        //       decoration: BoxDecoration(
        //         border: Border(
        //           bottom: BorderSide(
        //           color: ColorConstants.primaryBlack.withOpacity(.1)
        //         )
        //         )
        //       ),
        //       child: SingleChildScrollView(
        //         scrollDirection: Axis.horizontal,
        //         child: Row(
        //           children: List.generate(4, 
        //           (index) => Padding(
        //             padding: const EdgeInsets.all(8.0),
        //             child: Container(
        //               decoration: BoxDecoration(
        //                 borderRadius: BorderRadius.circular(8.0),
        //                 border: Border.all(
        //                   color: ColorConstants.primaryBlack.withOpacity(.5))),
        //                 height: 40,
        //                 width: 100,
        //                 child: Row(
        //                   children: [
        //                     Text("All")
        //                   ],
        //                 ),
        //               ),
        //           ),
        //                     ),
        //                     ),
        //       ),
        // ),
        // body: Row(
        //   children: [Container(
        //     decoration: BoxDecoration(
        //       border: Border(
        //         bottom: BorderSide(
        //           color: ColorConstants.primaryBlack.withOpacity(.1)
        //         )
        //       )
        //     ),
        //     child: SingleChildScrollView(
        //       scrollDirection: Axis.horizontal,
        //       child: Row(
        //         children: List.generate(10, 
        //         (index) => Padding(
        //           padding: EdgeInsets.all(8.0),
        //           child: Container(
        //             height: 40,
        //             width: 100,
        //             color: Colors.amber,
        //           ),)),
                  
        //       ),
        //     ),
        //   )],
        // ),
        // body: Container(
        //       padding: EdgeInsets.only(bottom: 4),
        //       decoration: BoxDecoration(
        //           border: Border(
        //               bottom: BorderSide(
        //                   color: ColorConstants.primaryBlack.withOpacity(.1)))),
        //       child: SingleChildScrollView(
        //         scrollDirection: Axis.horizontal,
        //         child: Row(
        //           children: List.generate(
        //               4,
        //               (index) => Padding(
        //                     padding:
        //                         const EdgeInsets.symmetric(horizontal: 5.0),
        //                     child: ActivityCategoryCard(
        //                       icon: index.isEven ? Icons.favorite : null,
        //                     ),
        //                   )),
        //         ),
        //       ),
        //     ),