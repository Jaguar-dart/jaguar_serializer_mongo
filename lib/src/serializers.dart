// Copyright (c) 2016, Ravi Teja Gudapati. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library serializer.mongo_serializer;

import 'package:mongo_dart/mongo_dart.dart' as mgo;
import 'package:jaguar_serializer/jaguar_serializer.dart';

/// Field processor to serializer Mongo ObjectId between Dart Object and Mongo
class MongoId implements FieldProcessor<String, mgo.ObjectId> {
  const MongoId();

  /// Called to process field before decoding
  String deserialize(mgo.ObjectId input) {
    return input.toHexString();
  }

  /// Called to process field before encoding
  mgo.ObjectId serialize(String value) {
    return new mgo.ObjectId.fromHexString(value);
  }
}

/// Field processor to serializer Mongo DateTime between Dart Object and Mongo
class MongoDateTime implements FieldProcessor<DateTime, DateTime> {
  const MongoDateTime();

  /// Called to process field before decoding
  DateTime deserialize(DateTime value) => value;

  /// Called to process field before encoding
  DateTime serialize(DateTime value) => value;
}

abstract class MgoAccess<ModelType> {
  Serializer<ModelType> get codec;

  ModelType decode(Map data) {
    return codec.fromMap(data);
  }

  List<ModelType> decodeList(List<Map> data) {
    return data.map((Map item) => codec.fromMap(item)).toList();
  }

  Map encode(ModelType data) {
    return codec.toMap(data);
  }

  List<Map> encodeList(List<ModelType> data) {
    return data.map((ModelType item) => codec.toMap(item)).toList();
  }
}
