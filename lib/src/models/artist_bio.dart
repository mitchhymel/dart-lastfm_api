part of models;
class ArtistBio extends BaseModel {
  final String link; //TODO: links to previous bios?
  final String published; //TODO: should be datetime
  final String summary;
  final String content;

  ArtistBio({this.link, this.published,
    this.summary, this.content});

  ArtistBio.fromMap(Map map) : 
    link = map['links']['link']['href'],
    published =  map['published'],
    summary = map['summary'],
    content = map['content'];

  @override
  Map toMap() => {
    'link': link,
    'published': published,
    'summary': summary,
    'content': content
  };
}