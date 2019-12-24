part of models;
class ArtistBio extends BaseModel {
  final String link; //TODO: links to previous bios?
  final String published; //TODO: should be datetime
  final String summary;
  final String content;

  ArtistBio({this.link, this.published,
    this.summary, this.content});

  ArtistBio.fromMap(Map map) : 
    link = map[LINKS][LINK][HREF],
    published =  map[PUBLISHED],
    summary = map[SUMMARY],
    content = map[CONTENT];

  @override
  Map toMap() => {
    LINK: link,
    PUBLISHED: published,
    SUMMARY: summary,
    CONTENT: content
  };
}