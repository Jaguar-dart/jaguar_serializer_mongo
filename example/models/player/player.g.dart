// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.test.models.player;

// **************************************************************************
// Generator: SerializerGenerator
// Target: class PlayerSerializer
// **************************************************************************

abstract class _$PlayerSerializer implements MapSerializer<Player> {
  const _$PlayerSerializer();

  Map toMap(Player model) {
    Map ret = new Map();
    ret["_id"] = new MongoId(#id).to(model.id);
    ret["allianceId"] = new MongoId(#allianceId).to(model.allianceId);
    ret["name"] = model.name;
    ret["email"] = model.email;
    ret["age"] = model.age;
    ret["score"] = model.score;
    ret["emailConfirmed"] = model.emailConfirmed;
    return ret;
  }

  Player fromMap(Map map, {Player model}) {
    if (map is! Map) {
      return null;
    }
    if (model is! Player) {
      model = createModel();
    }
    model.id = new MongoId(#id).from(map["_id"]);
    model.allianceId = new MongoId(#allianceId).from(map["allianceId"]);
    model.name = map["name"];
    model.email = map["email"];
    model.age = map["age"];
    model.score = map["score"];
    model.emailConfirmed = map["emailConfirmed"];
    return model;
  }
}
