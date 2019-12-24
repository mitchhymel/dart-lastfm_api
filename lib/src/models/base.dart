part of models;

class BaseModelFactory {

  // List<BaseModel> listFromMapList(Type t, List<Map> maps) =>
  //   maps.map((m) => t.fromMap(m)).toList();
}

abstract class BaseModel {
  BaseModel();
  BaseModel.fromMap(Map map);
  Map toMap();
  String toJson() => jsonEncode(toMap());
  String toString() => toJson();

  static List<Map> toMapList(List<BaseModel> models) =>
    models.map((m) => m.toMap()).toList();
}