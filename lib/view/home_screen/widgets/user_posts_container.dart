import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/colors_constants.dart';

class CustomPostsContainer extends StatefulWidget {
  const CustomPostsContainer({
    super.key,
    required this.userName,
    required this.proPic,
    this.caption,
    // required this.location,
    required this.postImagesList,
    this.isLiked = false,
  });

  final String userName;
  final String proPic;
  final String? caption;
  // final String location;
  final List<String> postImagesList;
  final bool isLiked;
  @override
  State<CustomPostsContainer> createState() => _CustomPostsContainerState();
}

class _CustomPostsContainerState extends State<CustomPostsContainer> {
  int currentPage = 1;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: ColorConstants.primaryWhite,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          ListTile(
            leading: CircleAvatar(
              radius: 16,
              backgroundImage: NetworkImage(widget.proPic),
            ),
            title: Row(
              children: [
                Text(
                  widget.userName,
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                ),
                SizedBox(width: 10),
                Icon(
                  Icons.verified,
                  size: 15,
                  color: ColorConstants.primaryBlue,
                ),
                Spacer(flex: 20),
                Text("5 min"),
                IconButton(
                  onPressed: () {}, 
                  icon: Icon(Icons.more_horiz))
              ],
            ),
            // subtitle: Text(
            //   widget.location,
            //   style: TextStyle(fontWeight: FontWeight.normal, fontSize: 11),
            // ),
            // trailing: Icon(Icons.more_horiz),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Text( "${widget.caption}" ?? "",
              style: TextStyle(
                color: ColorConstants.primaryBlack,
                fontWeight: FontWeight.normal
              ),
              ),
            ],
          ),
          Stack(
            children: [
              SizedBox(
                height: 375,
                width: 330,
                child: PageView.builder(
                  onPageChanged: (value) {
                    currentPage = value + 1;
                    setState(() {});
                  },
                  itemCount: widget.postImagesList.length,
                  itemBuilder: (context, index) => Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            image: NetworkImage(widget.postImagesList[index]))),
                  ),
                ),
              ),
              Positioned(
                right: 20,
                top: 20,
                child: Container(
                  decoration: BoxDecoration(
                      // color: ColorConstants.primaryBlack.withOpacity(.6),
                      borderRadius: BorderRadius.circular(15)),
                  padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    "",
                    // style: TextStyle(color: ColorConstants.primaryWhite),
                  ),
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 13.5),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Row(
                      children: [
                        widget.isLiked == true
                            ? Icon(
                                Icons.favorite_rounded,
                                size: 25,
                                color: ColorConstants.primaryRed,
                              )
                            : Icon(Icons.favorite_border, size: 25),
                        SizedBox(width: 16),
                        Icon(Icons.mode_comment_outlined, size: 25),
                        SizedBox(width: 16),
                        Icon(Icons.repeat_outlined, size: 25),
                        SizedBox(width: 16),
                        Icon(Icons.send, size: 25),
                      ],
                    ),
                    // Expanded(
                    //     child: Row(
                    //   mainAxisAlignment: MainAxisAlignment.center,
                    //   children: List.generate(
                    //       widget.postImagesList.length,
                    //       (index) => Padding(
                    //             padding: const EdgeInsets.only(left: 3),
                    //             child: CircleAvatar(
                    //               backgroundColor: (index == currentPage - 1)
                    //                   ? ColorConstants.primaryBlue
                    //                   : Colors.grey.withOpacity(.3),
                    //               radius: (index == currentPage - 1) ? 5 : 3,
                    //             ),
                    //           )),
                    // )),
                    // Icon(Icons.bookmark_border, size: 25),
                  ],
                ),
                SizedBox(
                  height: 13.5,
                ),
                Row(
                  children: [
                    CircleAvatar(
                      backgroundImage: NetworkImage(widget.proPic),
                      radius: 10,
                    ),
                    SizedBox(width: 16),
                    RichText(
                        text: TextSpan(
                            text: "20 replies ",
                            style:
                                TextStyle(color: ColorConstants.primaryBlack),
                            children: [
                          TextSpan(
                            text: " . ",
                            style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.bold),
                          ),
                          TextSpan(text: "40 likes ",
                          style: TextStyle(
                                color: ColorConstants.primaryBlack,
                                fontWeight: FontWeight.bold),),
                          // TextSpan(
                          //   text: "56,789 others ",
                          //   style: TextStyle(
                          //       color: ColorConstants.primaryBlack,
                          //       fontWeight: FontWeight.bold),
                          // ),
                        ])),
                  ],
                ),
                // SizedBox(height: 13.5),
                // RichText(
                //     textAlign: TextAlign.justify,
                //     text: TextSpan(
                //         text: widget.userName,
                //         style: TextStyle(
                //             color: ColorConstants.primaryBlack,
                //             fontWeight: FontWeight.bold),
                //         children: [
                //           TextSpan(
                //             text: " ${widget.caption}" ?? "",
                //             style: TextStyle(
                //                 color: ColorConstants.primaryBlack,
                //                 fontWeight: FontWeight.normal),
                //           )
                //         ])),
                // SizedBox(height: 13.5),
                // Text(
                //   "September 18",
                //   style: TextStyle(
                //       color: ColorConstants.primaryBlack.withOpacity(.5),
                //       fontSize: 11,
                //       fontWeight: FontWeight.normal),
                // ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
