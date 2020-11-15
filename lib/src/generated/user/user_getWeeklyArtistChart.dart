class UserGetWeeklyArtistChart {
  Weeklyartistchart weeklyartistchart;

  UserGetWeeklyArtistChart({this.weeklyartistchart});

  UserGetWeeklyArtistChart.fromJson(Map<String, dynamic> json) {
    weeklyartistchart = json['weeklyartistchart'] != null
        ? new Weeklyartistchart.fromJson(json['weeklyartistchart'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weeklyartistchart != null) {
      data['weeklyartistchart'] = this.weeklyartistchart.toJson();
    }
    return data;
  }
}

class Weeklyartistchart {
  List<Artist> artist;
  Attr attr;

  Weeklyartistchart({this.artist, this.attr});

  Weeklyartistchart.fromJson(Map<String, dynamic> json) {
    if (json['artist'] != null) {
      artist = new List<Artist>();
      json['artist'].forEach((v) {
        artist.add(new Artist.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artist != null) {
      data['artist'] = this.artist.map((v) => v.toJson()).toList();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class Artist {
  RankAttr attr;
  String mbid;
  String playcount;
  String name;
  String url;

  Artist({this.attr, this.mbid, this.playcount, this.name, this.url});

  Artist.fromJson(Map<String, dynamic> json) {
    attr = json['@attr'] != null ? new RankAttr.fromJson(json['@attr']) : null;
    mbid = json['mbid'];
    playcount = json['playcount'];
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
