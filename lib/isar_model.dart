import 'package:flutter/foundation.dart';
import 'package:isar/isar.dart';

part 'isar_model.g.dart'; // Required for Isar code generation

// profile_image.dart

@Collection()
class ProfileImage {
  Id localId = Isar.autoIncrement; // Primary key with auto increment
  late String mainPhoto;
  String? photo2;
  String? photo3;
  String? photo4;
  String? photo5;
  String profileId = UniqueKey().toString(); // Unique profile ID
}
