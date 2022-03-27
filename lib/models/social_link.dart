class SocialLink {
  String provider;
  String link;

  SocialLink({this.provider, this.link});

  SocialLink.fromJson(Map<String, dynamic> json) {
    provider = json['provider'];
    link = json['link'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['provider'] = provider;
    data['link'] = link;
    return data;
  }
}
