import 'package:cloud_firestore/cloud_firestore.dart';

class Post {

  String? title;
  String? content;
  String? like;


  Post({
    this.title,
    this.content,
    this.like,
  });

  Post.fromJson(dynamic json) {
    title = json['Title'];
    content = json['Content'];
    like = json['like'];
  }

  Post.fromSnapShot(DocumentSnapshot<Map<String, dynamic>> snapshot)
      : this.fromJson(snapshot.data());

  Post.fromQuerySnapshot(QueryDocumentSnapshot<Map<String, dynamic>> snapshot)
      : this.fromJson(snapshot.data());

  Map<String, dynamic> toJson() => {
    'title': title,
    'content': content,
    'like' : like,
  };
}
