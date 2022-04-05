class Project {
  String title;
  String desc;
  String image;
  Links links;

  Project.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    desc = json['desc'];
    image = json['image'];
    links = Links.fromJson(json['links']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['title'] = title;
    data['desc'] = desc;
    data['image'] = image;
    data['links'] = links.toJson();
    return data;
  }
}

class Links {
  String ios;
  String android;

  Links({this.ios, this.android});

  Links.fromJson(Map<String, String> json) {
    ios = json["ios"];
    android = json["android"];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['ios'] = ios;
    data['android'] = android;
    return data;
  }
}
