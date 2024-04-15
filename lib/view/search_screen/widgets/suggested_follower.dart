// import 'dart:convert';

class SuggestedFollower {
  final String id;
  final String username;
  final String proPic;
  final bool isFollowing;

  SuggestedFollower(
    {
      required this.id, 
      required this.username, 
      required this.proPic, 
      required this.isFollowing
      });

  Map<String, dynamic> toMap() {
    return <String, dynamic> {
      "id" : id,
      "username" : username,
      "proPic" : proPic,
      "isFollowing" : isFollowing
    };
  }

  factory SuggestedFollower.fromMap(Map<String, dynamic>map) {
    return SuggestedFollower(
      id: map["id"] as String,
      username: map["username"] as String,
      proPic: map["proPic"] as String,
      isFollowing: map["isFollowing"] as bool,

    );
  }

//   String toJson() => json.encode(toMap());

//   factory SuggestedFollower.fromJson(String source) =>
//   SuggestedFollower.fromMap(jsonEncode(source) as Map<String, dynamic>);
// }

  List<SuggestedFollower> SuggestedFollowers = [
    SuggestedFollower(
      id: "1",
      username: "flutterDev",
      proPic: "",
      isFollowing: true,
    ),
    SuggestedFollower(
      id: "2",
      username: "dartLover",
      proPic: "",
      isFollowing: false,
    ),
    SuggestedFollower(
      id: "3",
      username: "flutterFanatic",
      proPic: "",
      isFollowing: true,
    ),
    SuggestedFollower(
      id: "4",
      username: "flutterNinja",
      proPic: "",
      isFollowing: false,
    ),
    SuggestedFollower(
      id: "5",
      username: "dartWizard",
      proPic: "",
      isFollowing: true,
    ),
    SuggestedFollower(
      id: "6",
      username: "flutterEnthusiast",
      proPic: "",
      isFollowing: false,
    ),
    SuggestedFollower(
      id: "7",
      username: "flutterGuru",
      proPic: "",
      isFollowing: true,
    ),
    SuggestedFollower(
      id: "8",
      username: "dartMaster",
      proPic: "",
      isFollowing: false,
    ),
    SuggestedFollower(
      id: "9",
      username: "flutterWizard",
      proPic: "",
      isFollowing: true,
    ),
    SuggestedFollower(
      id: "10",
      username: "dartDeveloper",
      proPic: "",
      isFollowing: false,
    ),
  ];

//   Printing the list of Flutter profiles
//   flutterProfiles.forEach((profile) {
//     print("ID: ${profile.id}");
//     print("Username: ${profile.username}");
//     print("Profile Picture: ${profile.proPic}");
//     print("Is Following: ${profile.isFollowing}");
//     print("------------------------------------");
//   });
// }
}






