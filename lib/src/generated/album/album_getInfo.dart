class AlbumGetInfo {
  Album album;

  AlbumGetInfo({this.album});

  AlbumGetInfo.fromJson(Map<String, dynamic> json) {
    album = json['album'] != null ? new Album.fromJson(json['album']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.album != null) {
      data['album'] = this.album.toJson();
    }
    return data;
  }
}

class Album {
  String name;
  String artist;
  String mbid;
  String url;
  List<Image> image;
  String listeners;
  String playcount;
  Tracks tracks;
  Tags tags;
  Wiki wiki;

  Album(
      {this.name,
      this.artist,
      this.mbid,
      this.url,
      this.image,
      this.listeners,
      this.playcount,
      this.tracks,
      this.tags,
      this.wiki});

  Album.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    artist = json['artist'];
    mbid = json['mbid'];
    url = json['url'];
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    listeners = json['listeners'];
    playcount = json['playcount'];
    tracks =
        json['tracks'] != null ? new Tracks.fromJson(json['tracks']) : null;
    tags = json['tags'] != null ? new Tags.fromJson(json['tags']) : null;
    wiki = json['wiki'] != null ? new Wiki.fromJson(json['wiki']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['artist'] = this.artist;
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    data['listeners'] = this.listeners;
    data['playcount'] = this.playcount;
    if (this.tracks != null) {
      data['tracks'] = this.tracks.toJson();
    }
    if (this.tags != null) {
      data['tags'] = this.tags.toJson();
    }
    if (this.wiki != null) {
      data['wiki'] = this.wiki.toJson();
    }
    return data;
  }
}

class Image {
  String text;
  String size;

  Image({this.text, this.size});

  Image.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    size = json['size'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['#text'] = this.text;
    data['size'] = this.size;
    return data;
  }
}

class Tracks {
  List<Track> track;

  Tracks({this.track});

  Tracks.fromJson(Map<String, dynamic> json) {
    if (json['track'] != null) {
      track = new List<Track>();
      json['track'].forEach((v) {
        track.add(new Track.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.track != null) {
      data['track'] = this.track.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Track {
  String name;
  String url;
  String duration;
  Attr attr;
  Streamable streamable;
  Artist artist;

  Track(
      {this.name,
      this.url,
      this.duration,
      this.attr,
      this.streamable,
      this.artist});

  Track.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    duration = json['duration'];
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
    streamable = json['streamable'] != null
        ? new Streamable.fromJson(json['streamable'])
        : null;
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    data['duration'] = this.duration;
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    if (this.streamable != null) {
      data['streamable'] = this.streamable.toJson();
    }
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    return data;
  }
}

class Attr {
  String rank;

  Attr({this.rank});

  Attr.fromJson(Map<String, dynamic> json) {
    rank = json['rank'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['rank'] = this.rank;
    return data;
  }
}

class Streamable {
  String text;
  String fulltrack;

  Streamable({this.text, this.fulltrack});

  Streamable.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    fulltrack = json['fulltrack'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['#text'] = this.text;
    data['fulltrack'] = this.fulltrack;
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

class Tags {
  List<Tag> tag;

  Tags({this.tag});

  Tags.fromJson(Map<String, dynamic> json) {
    if (json['tag'] != null) {
      tag = new List<Tag>();
      json['tag'].forEach((v) {
        tag.add(new Tag.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tag != null) {
      data['tag'] = this.tag.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tag {
  String name;
  String url;

  Tag({this.name, this.url});

  Tag.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    return data;
  }
}

class Wiki {
  String published;
  String summary;
  String content;

  Wiki({this.published, this.summary, this.content});

  Wiki.fromJson(Map<String, dynamic> json) {
    published = json['published'];
    summary = json['summary'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['published'] = this.published;
    data['summary'] = this.summary;
    data['content'] = this.content;
    return data;
  }
}
