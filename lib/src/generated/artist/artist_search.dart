class ArtistSearch {
	Results results;

	ArtistSearch({this.results});

	ArtistSearch.fromJson(Map<String, dynamic> json) {
		results = json['results'] != null ? new Results.fromJson(json['results']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.results != null) {
      data['results'] = this.results.toJson();
    }
		return data;
	}
}

class Results {
	OpensearchQuery opensearchQuery;
	String opensearchTotalResults;
	String opensearchStartIndex;
	String opensearchItemsPerPage;
	Artistmatches artistmatches;
	Attr attr;

	Results({this.opensearchQuery, this.opensearchTotalResults, this.opensearchStartIndex, this.opensearchItemsPerPage, this.artistmatches, this.attr});

	Results.fromJson(Map<String, dynamic> json) {
		opensearchQuery = json['opensearch:Query'] != null ? new OpensearchQuery.fromJson(json['opensearch:Query']) : null;
		opensearchTotalResults = json['opensearch:totalResults'];
		opensearchStartIndex = json['opensearch:startIndex'];
		opensearchItemsPerPage = json['opensearch:itemsPerPage'];
		artistmatches = json['artistmatches'] != null ? new Artistmatches.fromJson(json['artistmatches']) : null;
		attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.opensearchQuery != null) {
      data['opensearch:Query'] = this.opensearchQuery.toJson();
    }
		data['opensearch:totalResults'] = this.opensearchTotalResults;
		data['opensearch:startIndex'] = this.opensearchStartIndex;
		data['opensearch:itemsPerPage'] = this.opensearchItemsPerPage;
		if (this.artistmatches != null) {
      data['artistmatches'] = this.artistmatches.toJson();
    }
		if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
		return data;
	}
}

class OpensearchQuery {
	String text;
	String role;
	String searchTerms;
	String startPage;

	OpensearchQuery({this.text, this.role, this.searchTerms, this.startPage});

	OpensearchQuery.fromJson(Map<String, dynamic> json) {
		text = json['#text'];
		role = json['role'];
		searchTerms = json['searchTerms'];
		startPage = json['startPage'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['#text'] = this.text;
		data['role'] = this.role;
		data['searchTerms'] = this.searchTerms;
		data['startPage'] = this.startPage;
		return data;
	}
}

class Artistmatches {
	List<Artist> artist;

	Artistmatches({this.artist});

	Artistmatches.fromJson(Map<String, dynamic> json) {
		if (json['artist'] != null) {
			artist = new List<Artist>();
			json['artist'].forEach((v) { artist.add(new Artist.fromJson(v)); });
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

class Artist {
	String name;
	String listeners;
	String mbid;
	String url;
	String streamable;
	List<Image> image;

	Artist({this.name, this.listeners, this.mbid, this.url, this.streamable, this.image});

	Artist.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		listeners = json['listeners'];
		mbid = json['mbid'];
		url = json['url'];
		streamable = json['streamable'];
		if (json['image'] != null) {
			image = new List<Image>();
			json['image'].forEach((v) { image.add(new Image.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['listeners'] = this.listeners;
		data['mbid'] = this.mbid;
		data['url'] = this.url;
		data['streamable'] = this.streamable;
		if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
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

class Attr {
	String album;

	Attr({this.album});

	Attr.fromJson(Map<String, dynamic> json) {
		album = json['for'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['for'] = this.album;
		return data;
	}
}
