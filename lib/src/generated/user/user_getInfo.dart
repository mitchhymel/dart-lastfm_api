class UserGetInfo {
  User user;

  UserGetInfo({this.user});

  UserGetInfo.fromJson(Map<String, dynamic> json) {
    user = json['user'] != null ? new User.fromJson(json['user']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.toJson();
    }
    return data;
  }
}

class User {
  String playlists;
  String playcount;
  String gender;
  String name;
  String subscriber;
  String url;
  String country;
  List<Image> image;
  Registered registered;
  String type;
  String age;
  String bootstrap;
  String realname;

  User(
      {this.playlists,
      this.playcount,
      this.gender,
      this.name,
      this.subscriber,
      this.url,
      this.country,
      this.image,
      this.registered,
      this.type,
      this.age,
      this.bootstrap,
      this.realname});

  User.fromJson(Map<String, dynamic> json) {
    playlists = json['playlists'];
    playcount = json['playcount'];
    gender = json['gender'];
    name = json['name'];
    subscriber = json['subscriber'];
    url = json['url'];
    country = json['country'];
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    registered = json['registered'] != null
        ? new Registered.fromJson(json['registered'])
        : null;
    type = json['type'];
    age = json['age'];
    bootstrap = json['bootstrap'];
    realname = json['realname'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['playlists'] = this.playlists;
    data['playcount'] = this.playcount;
    data['gender'] = this.gender;
    data['name'] = this.name;
    data['subscriber'] = this.subscriber;
    data['url'] = this.url;
    data['country'] = this.country;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    if (this.registered != null) {
      data['registered'] = this.registered.toJson();
    }
    data['type'] = this.type;
    data['age'] = this.age;
    data['bootstrap'] = this.bootstrap;
    data['realname'] = this.realname;
    return data;
  }
}

class Image {
  String size;
  String text;

  Image({this.size, this.text});

  Image.fromJson(Map<String, dynamic> json) {
    size = json['size'];
    text = json['#text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['size'] = this.size;
    data['#text'] = this.text;
    return data;
  }
}

class Registered {
  String unixtime;
  int text;

  Registered({this.unixtime, this.text});

  Registered.fromJson(Map<String, dynamic> json) {
    unixtime = json['unixtime'];
    text = json['#text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['unixtime'] = this.unixtime;
    data['#text'] = this.text;
    return data;
  }
}
