class LastFmEndpoints {
  static const LastFmEndpoints ARTIST_GETSIMILAR = const LastFmEndpoints._private('artist.getSimilar');

  final String value;
  const LastFmEndpoints._private(this.value);

  @override
  String toString() {
    return this.value;
  }
}