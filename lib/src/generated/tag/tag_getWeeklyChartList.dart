class TagGetWeeklyChartList {
  Weeklychartlist weeklychartlist;

  TagGetWeeklyChartList({this.weeklychartlist});

  TagGetWeeklyChartList.fromJson(Map<String, dynamic> json) {
    weeklychartlist = json['weeklychartlist'] != null
        ? new Weeklychartlist.fromJson(json['weeklychartlist'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.weeklychartlist != null) {
      data['weeklychartlist'] = this.weeklychartlist.toJson();
    }
    return data;
  }
}

class Weeklychartlist {
  List<Chart> chart;
  Attr attr;

  Weeklychartlist({this.chart, this.attr});

  Weeklychartlist.fromJson(Map<String, dynamic> json) {
    if (json['chart'] != null) {
      chart = new List<Chart>();
      json['chart'].forEach((v) {
        chart.add(new Chart.fromJson(v));
      });
    }
    attr = json['@attr'] != null ? new Attr.fromJson(json['@attr']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.chart != null) {
      data['chart'] = this.chart.map((v) => v.toJson()).toList();
    }
    if (this.attr != null) {
      data['@attr'] = this.attr.toJson();
    }
    return data;
  }
}

class Chart {
  String text;
  String from;
  String to;

  Chart({this.text, this.from, this.to});

  Chart.fromJson(Map<String, dynamic> json) {
    text = json['#text'];
    from = json['from'];
    to = json['to'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['#text'] = this.text;
    data['from'] = this.from;
    data['to'] = this.to;
    return data;
  }
}

class Attr {
  String tag;

  Attr({this.tag});

  Attr.fromJson(Map<String, dynamic> json) {
    tag = json['tag'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tag'] = this.tag;
    return data;
  }
}
