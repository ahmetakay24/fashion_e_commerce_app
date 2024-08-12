class BlogListModel {
  int? id;
  String? imageUrl;
  String? title;
  String? body;
  String? text;
  String? date;

  BlogListModel({this.id, this.imageUrl, this.title, this.body, this.text, this.date});

  BlogListModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    imageUrl = json['image_url'];
    title = json['title'];
    body = json['body'];
    text = json['text'];
    date = json['date'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image_url'] = imageUrl;
    data['title'] = title;
    data['body'] = body;
    data['text'] = text;
    data['date'] = date;
    return data;
  }
}
