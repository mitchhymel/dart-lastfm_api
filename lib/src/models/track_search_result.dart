part of models;

class TrackSearchResult {
  String name;
  String artist;
  String url;
  String streamable;
  String listeners;
  List<LastFmImage> image;
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
      image = new List<LastFmImage>();
      json['image'].forEach((v) {
        image.add(new LastFmImage.fromJson(v));
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

  static List<TrackSearchResult> fromLastFmResponse(LastFmResponse response) {
    List<TrackSearchResult> tracks = [];
    List maps = response.data['results']['trackmatches']['track'];
    maps.forEach((element) {
      tracks.add(TrackSearchResult.fromJson(element));
     });

    return tracks;
  }
}

class LastFmImage {
  String text;
  String size;

  LastFmImage({this.text, this.size});

  LastFmImage.fromJson(Map<String, dynamic> json) {
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