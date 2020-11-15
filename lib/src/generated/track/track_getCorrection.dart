class TrackGetCorrection {
  Corrections corrections;

  TrackGetCorrection({this.corrections});

  TrackGetCorrection.fromJson(Map<String, dynamic> json) {
    corrections = json['corrections'] != null
        ? new Corrections.fromJson(json['corrections'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.corrections != null) {
      data['corrections'] = this.corrections.toJson();
    }
    return data;
  }
}

class Corrections {
  Correction correction;

  Corrections({this.correction});

  Corrections.fromJson(Map<String, dynamic> json) {
    correction = json['correction'] != null
        ? new Correction.fromJson(json['correction'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.correction != null) {
      data['correction'] = this.correction.toJson();
    }
    return data;
  }
}

class Correction {
  Track track;
  Attr attr;

  Correction({this.track, this.attr});

  Correction.fromJson(Map<String, dynamic> json) {
    track = json['track'] != null ? new Track.fromJson(json['track']) : null;
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.track != null) {
      data['track'] = this.track.toJson();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class Track {
  String name;
  String mbid;
  String url;
  Artist artist;

  Track({this.name, this.mbid, this.url, this.artist});

  Track.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mbid = json['mbid'];
    url = json['url'];
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    return data;
  }
}

class Artist {
  String name;
  String mbid;
  String url;

  Artist({this.name, this.mbid, this.url});

  Artist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mbid = json['mbid'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    return data;
  }
}

class Attr {
  String index;
  String artistcorrected;
  String trackcorrected;

  Attr({this.index, this.artistcorrected, this.trackcorrected});

  Attr.fromJson(Map<String, dynamic> json) {
    index = json['index'];
    artistcorrected = json['artistcorrected'];
    trackcorrected = json['trackcorrected'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['index'] = this.index;
    data['artistcorrected'] = this.artistcorrected;
    data['trackcorrected'] = this.trackcorrected;
    return data;
  }
}
