import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/colors_constants.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.all(20),
          child: Column( 
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text(
                "Search",
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold
                ),
              ),
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                          hintText: "Search",
                          prefixIconConstraints: BoxConstraints(
                            minWidth: 30,
                          ),
                          prefixIcon: Icon(
                            Icons.search,
                            size: 20,
                          ),
                          isDense: true,
                          fillColor:
                            ColorConstants.primaryBlack.withOpacity(.1),
                          filled: true,
                          contentPadding:
                            EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(10),
                            borderSide: BorderSide.none)),
                      ),
                      SizedBox(height: 20),
                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/1222271/pexels-photo-1222271.jpeg?auto=compress&cs=tinysrgb&w=400"
                              ),
                            ),
                            title: Text("john dio"),
                            subtitle: Text("john_dio"),
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
                                  child: Text("Follow",
                                  style: TextStyle(color: ColorConstants.primaryBlack),),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),
                      
                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/307847/pexels-photo-307847.jpeg?auto=compress&cs=tinysrgb&w=400"
                              ),
                            ),
                            title: Text("jovan_kiloo"),
                            subtitle: Text("jovan_kiloo"),
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
                                  child: Text("Follow",
                                  style: TextStyle(color: ColorConstants.primaryBlack),),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),

                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/762080/pexels-photo-762080.jpeg?auto=compress&cs=tinysrgb&w=400"
                              ),
                            ),
                            title: Text("Alvara"),
                            subtitle: Text("j_alvara"),
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
                                  child: Text("Follow",
                                  style: TextStyle(color: ColorConstants.primaryBlack),),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),

                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/845457/pexels-photo-845457.jpeg?auto=compress&cs=tinysrgb&w=400"
                              ),
                            ),
                            title: Text("jhn io"),
                            subtitle: Text("jhn_io"),
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
                                  child: Text("Follow",
                                  style: TextStyle(color: ColorConstants.primaryBlack),),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),

                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/39866/entrepreneur-startup-start-up-man-39866.jpeg?auto=compress&cs=tinysrgb&w=400"
                              ),
                            ),
                            title: Text("Pixabyy"),
                            subtitle: Text("jn_pixa"),
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
                                  child: Text("Follow",
                                  style: TextStyle(color: ColorConstants.primaryBlack),),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),

                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/927022/pexels-photo-927022.jpeg?auto=compress&cs=tinysrgb&w=400"
                              ),
                            ),
                            title: Text("Andrea pica"),
                            subtitle: Text("Andri_pica"),
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
                                  child: Text("Follow",
                                  style: TextStyle(color: ColorConstants.primaryBlack),),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),

                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/445109/pexels-photo-445109.jpeg?auto=compress&cs=tinysrgb&w=400"
                              ),
                            ),
                            title: Text("Trinity"),
                            subtitle: Text("thri_nity"),
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
                                  child: Text("Follow",
                                  style: TextStyle(color: ColorConstants.primaryBlack),),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),

                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/91227/pexels-photo-91227.jpeg?auto=compress&cs=tinysrgb&w=400"
                              ),
                            ),
                            title: Text("stefan stefanik"),
                            subtitle: Text("stafaa._"),
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
                                  child: Text("Follow",
                                  style: TextStyle(color: ColorConstants.primaryBlack),),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),

                      Column(
                        children: [
                          ListTile(
                            leading: CircleAvatar(
                              backgroundImage: NetworkImage(
                                "https://images.pexels.com/photos/774909/pexels-photo-774909.jpeg?auto=compress&cs=tinysrgb&w=400"
                              ),
                            ),
                            title: Text("merviin"),
                            subtitle: Text("mer_vio"),
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
                                  child: Text("Follow",
                                  style: TextStyle(color: ColorConstants.primaryBlack),),
                                )
                              ],
                            ),
                          ),
                          Divider()
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}