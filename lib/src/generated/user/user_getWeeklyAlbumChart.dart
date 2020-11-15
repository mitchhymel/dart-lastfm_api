class UserGetWeeklyAlbumChart {
  Weeklyalbumchart weeklyalbumchart;

  UserGetWeeklyAlbumChart({this.weeklyalbumchart});

  UserGetWeeklyAlbumChart.fromJson(Map<String, dynamic> json) {
    weeklyalbumchart = json['weeklyalbumchart'] != null
        ? new Weeklyalbumchart.fromJson(json['weeklyalbumchart'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weeklyalbumchart != null) {
      data['weeklyalbumchart'] = this.weeklyalbumchart.toJson();
    }
    return data;
  }
}

class Weeklyalbumchart {
  List<Album> album;
  Attr attr;

  Weeklyalbumchart({this.album, this.attr});

  Weeklyalbumchart.fromJson(Map<String, dynamic> json) {
    if (json['album'] != null) {
      album = new List<Album>();
      json['album'].forEach((v) {
        album.add(new Album.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.album != null) {
      data['album'] = this.album.map((v) => v.toJson()).toList();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class Album {
  Artist artist;
  RankAttr attr;
  String mbid;
  String playcount;
  String name;
  String url;

  Album(
      {this.artist, this.attr, this.mbid, this.playcount, this.name, this.url});

  Album.fromJson(Map<String, dynamic> json) {
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
    attr = json['@attr'] != null ? new RankAttr.fromJson(json['@attr']) : null;
    mbid = json['mbid'];
    playcount = json['playcount'];
    name = json['name'];
    url = json['url'];
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
    data['playcount'] = this.playcount;
    data['name'] = this.name;
    data['url'] = this.url;
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
