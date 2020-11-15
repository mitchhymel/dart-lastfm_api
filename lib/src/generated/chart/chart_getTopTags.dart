class ChartGetTopTags {
	Tags tags;

	ChartGetTopTags({this.tags});

	ChartGetTopTags.fromJson(Map<String, dynamic> json) {
		tags = json['tags'] != null ? new Tags.fromJson(json['tags']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.tags != null) {
      data['tags'] = this.tags.toJson();
    }
		return data;
	}
}

class Tags {
	List<Tag> tag;
	Attr attr;

	Tags({this.tag, this.attr});

	Tags.fromJson(Map<String, dynamic> json) {
		if (json['tag'] != null) {
			tag = new List<Tag>();
			json['tag'].forEach((v) { tag.add(new Tag.fromJson(v)); });
		}
		attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		if (this.tag != null) {
      data['tag'] = this.tag.map((v) => v.toJson()).toList();
    }
		if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
		return data;
	}
}

class Tag {
	String name;
	String url;
	String reach;
	String taggings;
	String streamable;
	Wiki wiki;

	Tag({this.name, this.url, this.reach, this.taggings, this.streamable, this.wiki});

	Tag.fromJson(Map<String, dynamic> json) {
		name = json['name'];
		url = json['url'];
		reach = json['reach'];
		taggings = json['taggings'];
		streamable = json['streamable'];
		wiki = json['wiki'] != null ? new Wiki.fromJson(json['wiki']) : null;
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['name'] = this.name;
		data['url'] = this.url;
		data['reach'] = this.reach;
		data['taggings'] = this.taggings;
		data['streamable'] = this.streamable;
		if (this.wiki != null) {
      data['wiki'] = this.wiki.toJson();
    }
		return data;
	}
}

class Wiki {


	Wiki();

	Wiki.fromJson(Map<String, dynamic> json) {
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		return data;
	}
}

class Attr {
	String page;
	String perPage;
	String totalPages;
	String total;

	Attr({this.page, this.perPage, this.totalPages, this.total});

	Attr.fromJson(Map<String, dynamic> json) {
		page = json['page'];
		perPage = json['perPage'];
		totalPages = json['totalPages'];
		total = json['total'];
	}

	Map<String, dynamic> toJson() {
		final Map<String, dynamic> data = new Map<String, dynamic>();
		data['page'] = this.page;
		data['perPage'] = this.perPage;
		data['totalPages'] = this.totalPages;
		data['total'] = this.total;
		return data;
	}
}
