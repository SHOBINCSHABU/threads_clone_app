import 'package:flutter/material.dart';
import 'package:threads_clone_app/core/constants/colors_constants.dart';
import 'package:threads_clone_app/core/constants/images_constants.dart';

class PostScreen extends StatefulWidget {
  const PostScreen({super.key});

  @override
  State<PostScreen> createState() => _PostScreenState();
}

class _PostScreenState extends State<PostScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {Navigator.pop(context);}, 
          icon: Icon(
            Icons.close_outlined)),
        title: Text("New Threads",
        style: TextStyle(
          fontWeight: FontWeight.bold
        ),),
      ),
      body: Column(
        children: [
          Expanded(
            child: Column(
              children: [
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: CircleAvatar(radius: 30, 
                      backgroundImage: AssetImage(
                        ImagessConstants.shobinProfilePhoto),
                      ),
                    ),
                    // SizedBox(
                    //   width: 14,
                    // ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        // mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text("_.punyalan._",
                          style: TextStyle(
                            fontWeight: FontWeight.bold
                          ),),
                          TextFormField(
                            decoration: 
                            InputDecoration(
                              hintText: "Start a thread....",
                              hintStyle: TextStyle(
                                fontSize: 14
                              ),
                              border: InputBorder.none
                              ),
                          )
                        ],
                      ))
                  ],
                ),
              ],
              
            ),
          ),
         Row(
           children: [
             Padding(
               padding: const EdgeInsets.all(10.0),
               child: Text(
                "Anyone can reply"),
             ),
              TextButton(
          onPressed: () {}, 
          child: Text(
            "Post", 
            style: TextStyle(
              color: ColorConstants.primaryBlue
            ),),),
           ],
         ),
        
            
        ],
      ),
      
    );
  }
}