import 'dart:convert';

import 'package:lastfmapi/lastfm_api.dart';
import 'package:lastfmapi/src/lastfm_response.dart';

class SimilarArtistImage {
  final String url;
  final String size;
  SimilarArtistImage(this.url, this.size);

  static SimilarArtistImage fromMap(Map map) {
    return new SimilarArtistImage(
      map['#text'],
      map['size']
    );
  }

  static List<SimilarArtistImage> listFromMapList(List<dynamic> maps) {
    return maps.map((m) => SimilarArtistImage.fromMap(m)).toList();
  }

  Map toMap() {
    return {
      'url': url,
      'size': size
    };
  }

  String toString() {
    return this.toJson();
  }

  String toJson() {
    return jsonEncode(this.toMap());
  }
}

class SimilarArtist {
  final String name;
  final String mbid;
  final double match;
  final String url;
  final bool streamable;
  final List<SimilarArtistImage> images;
  
  SimilarArtist(this.name, this.mbid, this.match, this.url, 
    this.streamable, this.images);

  static SimilarArtist fromMap(Map map) {
    return new SimilarArtist(
      map['name'],
      map['mbid'],
      double.parse(map['match']),
      map['url'],
      int.parse(map['streamable']) == 1,
      SimilarArtistImage.listFromMapList(map['image'])
    );
  }

  static List<SimilarArtist> listFromMapList(List<dynamic> maps) {
    return maps.map((m) => SimilarArtist.fromMap(m)).toList();
  }

  static List<SimilarArtist> fromLastFmResponse(LastFmResponse response) {
    if (response.error != null) {
        print(response.error);
        return [];
    }

    Map simArtist = response.data['similarartists'];
    List<dynamic> maps = simArtist['artist'];
    return listFromMapList(maps);
  }

  Map toMap() {
    return {
      'name': name,
      'mbid': mbid,
      'match': match,
      'url': url,
      'streamable': streamable,
      'image': images.map((i) => i.toMap()).toList()
    };
  }

  String toJson() {
    return jsonEncode(this.toMap());
  }
}