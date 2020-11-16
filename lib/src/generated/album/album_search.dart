class AlbumSearch {
	Results results;

	AlbumSearch({this.results});

	AlbumSearch.fromJson(Map<String, dynamic> json) {
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
	Albummatches albummatches;
	Attr attr;

	Results({this.opensearchQuery, this.opensearchTotalResults, this.opensearchStartIndex, this.opensearchItemsPerPage, this.albummatches, this.attr});

	Results.fromJson(Map<String, dynamic> json) {
		opensearchQuery = json['opensearch:Query'] != null ? new OpensearchQuery.fromJson(json['opensearch:Query']) : null;
		opensearchTotalResults = json['opensearch:totalResults'];
		opensearchStartIndex = json['opensearch:startIndex'];
		opensearchItemsPerPage = json['opensearch:itemsPerPage'];
		albummatches = json['albummatches'] != null ? new Albummatches.fromJson(json['albummatches']) : null;
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
		if (this.albummatches != null) {
      data['albummatches'] = this.albummatches.toJson();
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

class Albummatches {
	List<SearchAlbum> album;

	Albummatches({this.album});

	Albummatches.fromJson(Map<String, dynamic> json) {
		if (json['album'] != null) {
			album = new List<SearchAlbum>();
			json['album'].forEach((v) { album.add(new SearchAlbum.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.album != null) {
      data['album'] = this.album.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class SearchAlbum {
	String name;
	String artist;
	String url;
	List<Image> image;
	String streamable;
	String mbid;

	SearchAlbum({this.name, this.artist, this.url, this.image, this.streamable, this.mbid});

	SearchAlbum.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		artist = json['artist'];
		url = json['url'];
		if (json['image'] != null) {
			image = new List<Image>();
			json['image'].forEach((v) { image.add(new Image.fromJson(v)); });
		}
		streamable = json['streamable'];
		mbid = json['mbid'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['artist'] = this.artist;
		data['url'] = this.url;
		if (this.image != null) {
      data['image'] = this.image.map((v) => v.toJson()).toList();
    }
		data['streamable'] = this.streamable;
		data['mbid'] = this.mbid;
		return data;
	}
}

class AlbumSearchImage {
	String text;
	String size;

	AlbumSearchImage({this.text, this.size});

	AlbumSearchImage.fromJson(Map<String, dynamic> json) {
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

class AlbumSearchAttr {
	String album;

	AlbumSearchAttr({this.album});

	AlbumSearchAttr.fromJson(Map<String, dynamic> json) {
		album = json['for'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['for'] = this.album;
		return data;
	}
}
