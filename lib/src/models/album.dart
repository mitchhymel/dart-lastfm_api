part of models;

class Album {
  String name;
  String mbid;
  String url;
  AlbumArtist artist;
  List<ArtistImage> image;

  Album({this.name, this.mbid, this.url, this.artist, this.image});

  Album.fromJson(Map<String, dynamic> json) {
    name = json['name'];
    mbid = json['mbid'];
    url = json['url'];
    artist =
    json['artist'] != null ? new AlbumArtist.fromJson(json['artist']) : null;
    if (json['image'] != null) {
      image = new List<ArtistImage>();
      json['image'].forEach((v) {
        image.add(new ArtistImage.fromMap(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['name'] = this.name;
    data['mbid'] = this.mbid;
    data['url'] = this.url;
    if (this.artist != null) {
      data['artist'] = this.artist.toJson();
    }
    if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AlbumArtist {
  String name;
  String mbid;
  String url;

  AlbumArtist({this.name, this.mbid, this.url});

  AlbumArtist.fromJson(Map<String, dynamic> json) {
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