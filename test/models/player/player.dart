library serializer.test.models.player;

import 'package:jaguar_serializer/jaguar_serializer.dart';
import 'package:jaguar_serializer_mongo/jaguar_serializer_mongo.dart';

part 'player.g.dart';

@GenSerializer(fields: const {
  'id': const EnDecode('_id'),
}, processors: const {
  'id': const MongoId(),
  'allianceId': const MongoId(),
})
class PlayerSerializer extends Serializer<Player> with _$PlayerSerializer {
  Player createModel() => new Player();

  PlayerSerializer();
}

/// Player model for the game
class Player {
  /// Id of the player
  String id;

  /// Id of the alliance the player belongs to
  String allianceId;

  /// Name of the player
  String name;

  /// Email of the player
  String email;

  /// Age of the player
  int age;

  /// Player score
  int score;

  /// Has the player confirmed his email?
  ///
  /// Should not be sent to client
  bool emailConfirmed;

  static PlayerSerializer serializer = new PlayerSerializer();

  String toString() =>
      [id, allianceId, name, email, age, score, emailConfirmed].toString();
}
