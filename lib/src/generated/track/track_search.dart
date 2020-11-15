class TrackSearch {
	Results results;

	TrackSearch({this.results});

	TrackSearch.fromJson(Map<String, dynamic> json) {
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
	Trackmatches trackmatches;
	Attr attr;

	Results({this.opensearchQuery, this.opensearchTotalResults, this.opensearchStartIndex, this.opensearchItemsPerPage, this.trackmatches, this.attr});

	Results.fromJson(Map<String, dynamic> json) {
		opensearchQuery = json['opensearch:Query'] != null ? new OpensearchQuery.fromJson(json['opensearch:Query']) : null;
		opensearchTotalResults = json['opensearch:totalResults'];
		opensearchStartIndex = json['opensearch:startIndex'];
		opensearchItemsPerPage = json['opensearch:itemsPerPage'];
		trackmatches = json['trackmatches'] != null ? new Trackmatches.fromJson(json['trackmatches']) : null;
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
		if (this.trackmatches != null) {
      data['trackmatches'] = this.trackmatches.toJson();
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
	String startPage;

	OpensearchQuery({this.text, this.role, this.startPage});

	OpensearchQuery.fromJson(Map<String, dynamic> json) {
		text = json['#text'];
		role = json['role'];
		startPage = json['startPage'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['#text'] = this.text;
		data['role'] = this.role;
		data['startPage'] = this.startPage;
		return data;
	}
}

class Trackmatches {
	List<Track> track;

	Trackmatches({this.track});

	Trackmatches.fromJson(Map<String, dynamic> json) {
		if (json['track'] != null) {
			track = new List<Track>();
			json['track'].forEach((v) { track.add(new Track.fromJson(v)); });
		}
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.track != null) {
      data['track'] = this.track.map((v) => v.toJson()).toList();
    }
		return data;
	}
}

class Track {
	String name;
	String artist;
	String url;
	String streamable;
	String listeners;
	List<Image> image;
	String mbid;

	Track({this.name, this.artist, this.url, this.streamable, this.listeners, this.image, this.mbid});

	Track.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		artist = json['artist'];
		url = json['url'];
		streamable = json['streamable'];
		listeners = json['listeners'];
		if (json['image'] != null) {
			image = new List<Image>();
			json['image'].forEach((v) { image.add(new Image.fromJson(v)); });
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

class Attr {


	Attr();

	Attr.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}
