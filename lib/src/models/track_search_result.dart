part of models;

class TrackSearchResult {
  String name;
  String artist;
  String url;
  String streamable;
  String listeners;
  List<Image> image;
  String mbid;

  TrackSearchResult(
      {this.name,
      this.artist,
      this.url,
      this.streamable,
      this.listeners,
      this.image,
      this.mbid});

  TrackSearchResult.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    artist = json['artist'];
    url = json['url'];
    streamable = json['streamable'];
    listeners = json['listeners'];
    if (json['image'] != null) {
      image = new List<Image>();
      json['image'].forEach((v) {
        image.add(new Image.fromJson(v));
      });
    }
    mbid = json['mbid'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['artist'] = this.artist;
    data['url'] = this.url;
    data['streamable'] = this.streamable;
    data['listeners'] = this.listeners;
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    data['mbid'] = this.mbid;
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