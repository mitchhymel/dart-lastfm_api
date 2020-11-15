class ArtistGetInfo {
  Artist artist;

  ArtistGetInfo({this.artist});

  ArtistGetInfo.fromJson(Map<String, dynamic> json) {
    artist =
        json['artist'] != null ? new Artist.fromJson(json['artist']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
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
  List<Image> image;
  String streamable;
  String ontour;
  Stats stats;
  Similar similar;
  Tags tags;
  Bio bio;

  Artist(
      {this.name,
      this.mbid,
      this.url,
      this.image,
      this.streamable,
      this.ontour,
      this.stats,
      this.similar,
      this.tags,
      this.bio});

  Artist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mbid = json['mbid'];
    url = json['url'];
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    streamable = json['streamable'];
    ontour = json['ontour'];
    stats = json['stats'] != null ? new Stats.fromJson(json['stats']) : null;
    similar =
        json['similar'] != null ? new Similar.fromJson(json['similar']) : null;
    tags = json['tags'] != null ? new Tags.fromJson(json['tags']) : null;
    bio = json['bio'] != null ? new Bio.fromJson(json['bio']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    data['streamable'] = this.streamable;
    data['ontour'] = this.ontour;
    if (this.stats != null) {
      data['stats'] = this.stats.toJson();
    }
    if (this.similar != null) {
      data['similar'] = this.similar.toJson();
    }
    if (this.tags != null) {
      data['tags'] = this.tags.toJson();
    }
    if (this.bio != null) {
      data['bio'] = this.bio.toJson();
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

class Stats {
  String listeners;
  String playcount;

  Stats({this.listeners, this.playcount});

  Stats.fromJson(Map<String, dynamic> json) {
    listeners = json['listeners'];
    playcount = json['playcount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['listeners'] = this.listeners;
    data['playcount'] = this.playcount;
    return data;
  }
}

class Similar {
  List<SimilarArtist> artist;

  Similar({this.artist});

  Similar.fromJson(Map<String, dynamic> json) {
    if (json['artist'] != null) {
      artist = new List<SimilarArtist>();
      json['artist'].forEach((v) {
        artist.add(new SimilarArtist.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.artist != null) {
      data['artist'] = this.artist.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class SimilarArtist {
  String name;
  String url;
  List<Image> image;

  SimilarArtist({this.name, this.url, this.image});

  SimilarArtist.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    url = json['url'];
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['url'] = this.url;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
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

class Bio {
  Links links;
  String published;
  String summary;
  String content;

  Bio({this.links, this.published, this.summary, this.content});

  Bio.fromJson(Map<String, dynamic> json) {
    links = json['links'] != null ? new Links.fromJson(json['links']) : null;
    published = json['published'];
    summary = json['summary'];
    content = json['content'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.links != null) {
      data['links'] = this.links.toJson();
    }
    data['published'] = this.published;
    data['summary'] = this.summary;
    data['content'] = this.content;
    return data;
  }
}

class Links {
  Link link;

  Links({this.link});

  Links.fromJson(Map<String, dynamic> json) {
    link = json['link'] != null ? new Link.fromJson(json['link']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.link != null) {
      data['link'] = this.link.toJson();
    }
    return data;
  }
}

class Link {
  String text;
  String rel;
  String href;

  Link({this.text, this.rel, this.href});

  Link.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    rel = json['rel'];
    href = json['href'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['#text'] = this.text;
    data['rel'] = this.rel;
    data['href'] = this.href;
    return data;
  }
}
