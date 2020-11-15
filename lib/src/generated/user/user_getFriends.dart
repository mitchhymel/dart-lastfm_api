class UserGetFriends {
  Friends friends;

  UserGetFriends({this.friends});

  UserGetFriends.fromJson(Map<String, dynamic> json) {
    friends =
        json['friends'] != null ? new Friends.fromJson(json['friends']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.friends != null) {
      data['friends'] = this.friends.toJson();
    }
    return data;
  }
}

class Friends {
  List<User> user;
  Attr attr;

  Friends({this.user, this.attr});

  Friends.fromJson(Map<String, dynamic> json) {
    if (json['user'] != null) {
      user = new List<User>();
      json['user'].forEach((v) {
        user.add(new User.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.user != null) {
      data['user'] = this.user.map((v) => v.toJson()).toList();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class User {
  String playlists;
  String playcount;
  String subscriber;
  String name;
  String country;
  List<Image> image;
  Registered registered;
  String url;
  String realname;
  String bootstrap;
  String type;

  User(
      {this.playlists,
      this.playcount,
      this.subscriber,
      this.name,
      this.country,
      this.image,
      this.registered,
      this.url,
      this.realname,
      this.bootstrap,
      this.type});

  User.fromJson(Map<String, dynamic> json) {
    playlists = json['playlists'];
    playcount = json['playcount'];
    subscriber = json['subscriber'];
    name = json['name'];
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
    url = json['url'];
    realname = json['realname'];
    bootstrap = json['bootstrap'];
    type = json['type'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['playlists'] = this.playlists;
    data['playcount'] = this.playcount;
    data['subscriber'] = this.subscriber;
    data['name'] = this.name;
    data['country'] = this.country;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    if (this.registered != null) {
      data['registered'] = this.registered.toJson();
    }
    data['url'] = this.url;
    data['realname'] = this.realname;
    data['bootstrap'] = this.bootstrap;
    data['type'] = this.type;
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
  String text;

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

class Attr {
  String page;
  String total;
  String user;
  String perPage;
  String totalPages;

  Attr({this.page, this.total, this.user, this.perPage, this.totalPages});

  Attr.fromJson(Map<String, dynamic> json) {
    page = json['page'];
    total = json['total'];
    user = json['user'];
    perPage = json['perPage'];
    totalPages = json['totalPages'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['page'] = this.page;
    data['total'] = this.total;
    data['user'] = this.user;
    data['perPage'] = this.perPage;
    data['totalPages'] = this.totalPages;
    return data;
  }
}
