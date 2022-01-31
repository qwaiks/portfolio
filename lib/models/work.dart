class Work {
  String name;
  String date;
  String desc;
  List<String> tags;

  Work({this.name, this.date, this.desc, this.tags});

  Work.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    date = json['date'];
    desc = json['desc'];
    tags = json['tags'].cast<String>();
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['name'] = name;
    data['date'] = date;
    data['desc'] = desc;
    data['tags'] = tags;
    return data;
  }
}