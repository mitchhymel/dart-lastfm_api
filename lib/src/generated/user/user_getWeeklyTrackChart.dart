class UserGetWeeklyTrackChart {
  Weeklytrackchart weeklytrackchart;

  UserGetWeeklyTrackChart({this.weeklytrackchart});

  UserGetWeeklyTrackChart.fromJson(Map<String, dynamic> json) {
    weeklytrackchart = json['weeklytrackchart'] != null
        ? new Weeklytrackchart.fromJson(json['weeklytrackchart'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weeklytrackchart != null) {
      data['weeklytrackchart'] = this.weeklytrackchart.toJson();
    }
    return data;
  }
}

class Weeklytrackchart {
  Attr attr;
  List<Track> track;

  Weeklytrackchart({this.attr, this.track});

  Weeklytrackchart.fromJson(Map<String, dynamic> json) {
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
    if (json['track'] != null) {
      track = new List<Track>();
      json['track'].forEach((v) {
        track.add(new Track.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    if (this.track != null) {
      data['track'] = this.track.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Attr {
  String user;
  String from;
  String to;

  Attr({this.user, this.from, this.to});

  Attr.fromJson(Map<String, dynamic> json) {
    user = json['user'];
    from = json['from'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['user'] = this.user;
    data['from'] = this.from;
    data['to'] = this.to;
    return data;
  }
}

class Track {
  Artist artist;
  RankAttr attr;
  String mbid;
  String url;
  List<Image> image;
  String name;
  String playcount;

  Track(
      {this.artist,
      this.attr,
      this.mbid,
      this.url,
      this.image,
      this.name,
      this.playcount});

  Track.fromJson(Map<String, dynamic> json) {
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    attr = json['@attr'] != null ? new RankAttr.fromJson(json['@attr']) : null;
    mbid = json['mbid'];
    url = json['url'];
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    name = json['name'];
    playcount = json['playcount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    data['name'] = this.name;
    data['playcount'] = this.playcount;
    return data;
  }
}

class Artist {
  String mbid;
  String text;

  Artist({this.mbid, this.text});

  Artist.fromJson(Map<String, dynamic> json) {
    mbid = json['mbid'];
    text = json['#text'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['mbid'] = this.mbid;
    data['#text'] = this.text;
    return data;
  }
}

class RankAttr {
  String rank;

  RankAttr({this.rank});

  RankAttr.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rank'] = this.rank;
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
