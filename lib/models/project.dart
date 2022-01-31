class Project {
  String name;
  String desc;
  String image;
  List<String> tags;
  Links links;

  Project.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    desc = json['desc'];
    image = json['image'];
    tags = json['tags'].cast<String>();
    links = Links.fromJson(json['links']);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['desc'] = desc;
    data['image'] = image;
    data['tags'] = tags;
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
