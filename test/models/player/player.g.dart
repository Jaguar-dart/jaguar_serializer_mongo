// GENERATED CODE - DO NOT MODIFY BY HAND

part of serializer.test.models.player;

// **************************************************************************
// Generator: JaguarSerializerGenerator
// **************************************************************************

abstract class _$PlayerSerializer implements Serializer<Player> {
  final _mongoId = const MongoId();

  Map<String, dynamic> toMap(Player model,
      {bool withType: false, String typeKey}) {
    Map<String, dynamic> ret;
    if (model != null) {
      ret = <String, dynamic>{};
      setNullableValue(ret, "_id", _mongoId.serialize(model.id));
      setNullableValue(ret, "allianceId", _mongoId.serialize(model.allianceId));
      setNullableValue(ret, "name", model.name);
      setNullableValue(ret, "email", model.email);
      setNullableValue(ret, "age", model.age);
      setNullableValue(ret, "score", model.score);
      setNullableValue(ret, "emailConfirmed", model.emailConfirmed);
      setTypeKeyValue(typeKey, modelString(), withType, ret);
    }
    return ret;
  }

  Player fromMap(Map<String, dynamic> map, {Player model, String typeKey}) {
    if (map == null) {
      return null;
    }
    if (model is! Player) {
      model = new Player();
    }
    model.id = _mongoId.deserialize(map["_id"] as ObjectId);
    model.allianceId = _mongoId.deserialize(map["allianceId"] as ObjectId);
    model.name = map["name"] as String;
    model.email = map["email"] as String;
    model.age = map["age"] as int;
    model.score = map["score"] as int;
    model.emailConfirmed = map["emailConfirmed"] as bool;
    return model;
  }

  String modelString() => "Player";
}
