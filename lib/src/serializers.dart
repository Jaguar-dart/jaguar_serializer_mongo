// Copyright (c) 2016, Ravi Teja Gudapati. All rights reserved. Use of this source code
// is governed by a BSD-style license that can be found in the LICENSE file.

library serializer.mongo_serializer;

import 'package:mongo_dart/mongo_dart.dart' as mgo;
import 'package:jaguar_serializer/serializer.dart';

/// Field processor to serializer Mongo ObjectIds between Dart Object and Mongo
@DefineFieldProcessor()
class MongoId implements FieldProcessor<String, mgo.ObjectId> {
  final Symbol field;

  const MongoId(this.field);

  String from(mgo.ObjectId input) {
    return input.toHexString();
  }

  mgo.ObjectId to(String value) {
    return new mgo.ObjectId.fromHexString(value);
  }
}
