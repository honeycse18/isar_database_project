// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'isar_model.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetProfileImageCollection on Isar {
  IsarCollection<ProfileImage> get profileImages => this.collection();
}

const ProfileImageSchema = CollectionSchema(
  name: r'ProfileImage',
  id: 3069115610906096334,
  properties: {
    r'mainPhoto': PropertySchema(
      id: 0,
      name: r'mainPhoto',
      type: IsarType.string,
    ),
    r'photo2': PropertySchema(
      id: 1,
      name: r'photo2',
      type: IsarType.string,
    ),
    r'photo3': PropertySchema(
      id: 2,
      name: r'photo3',
      type: IsarType.string,
    ),
    r'photo4': PropertySchema(
      id: 3,
      name: r'photo4',
      type: IsarType.string,
    ),
    r'photo5': PropertySchema(
      id: 4,
      name: r'photo5',
      type: IsarType.string,
    ),
    r'profileId': PropertySchema(
      id: 5,
      name: r'profileId',
      type: IsarType.string,
    )
  },
  estimateSize: _profileImageEstimateSize,
  serialize: _profileImageSerialize,
  deserialize: _profileImageDeserialize,
  deserializeProp: _profileImageDeserializeProp,
  idName: r'localId',
  indexes: {
    r'profileId': IndexSchema(
      id: 6052971939042612300,
      name: r'profileId',
      unique: true,
      replace: false,
      properties: [
        IndexPropertySchema(
          name: r'profileId',
          type: IndexType.hash,
          caseSensitive: true,
        )
      ],
    )
  },
  links: {},
  embeddedSchemas: {},
  getId: _profileImageGetId,
  getLinks: _profileImageGetLinks,
  attach: _profileImageAttach,
  version: '3.1.0+1',
);

int _profileImageEstimateSize(
  ProfileImage object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.mainPhoto.length * 3;
  bytesCount += 3 + object.photo2!.length * 3;
  bytesCount += 3 + object.photo3!.length * 3;
  bytesCount += 3 + object.photo4!.length * 3;
  bytesCount += 3 + object.photo5!.length * 3;
  bytesCount += 3 + object.profileId.length * 3;
  return bytesCount;
}

void _profileImageSerialize(
  ProfileImage object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.mainPhoto);
  writer.writeString(offsets[1], object.photo2);
  writer.writeString(offsets[2], object.photo3);
  writer.writeString(offsets[3], object.photo4);
  writer.writeString(offsets[4], object.photo5);
  writer.writeString(offsets[5], object.profileId);
}

ProfileImage _profileImageDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = ProfileImage();
  object.localId = id;
  object.mainPhoto = reader.readString(offsets[0]);
  object.photo2 = reader.readString(offsets[1]);
  object.photo3 = reader.readString(offsets[2]);
  object.photo4 = reader.readString(offsets[3]);
  object.photo5 = reader.readString(offsets[4]);
  object.profileId = reader.readString(offsets[5]);
  return object;
}

P _profileImageDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readString(offset)) as P;
    case 1:
      return (reader.readString(offset)) as P;
    case 2:
      return (reader.readString(offset)) as P;
    case 3:
      return (reader.readString(offset)) as P;
    case 4:
      return (reader.readString(offset)) as P;
    case 5:
      return (reader.readString(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _profileImageGetId(ProfileImage object) {
  return object.localId;
}

List<IsarLinkBase<dynamic>> _profileImageGetLinks(ProfileImage object) {
  return [];
}

void _profileImageAttach(
    IsarCollection<dynamic> col, Id id, ProfileImage object) {
  object.localId = id;
}

extension ProfileImageByIndex on IsarCollection<ProfileImage> {
  Future<ProfileImage?> getByProfileId(String profileId) {
    return getByIndex(r'profileId', [profileId]);
  }

  ProfileImage? getByProfileIdSync(String profileId) {
    return getByIndexSync(r'profileId', [profileId]);
  }

  Future<bool> deleteByProfileId(String profileId) {
    return deleteByIndex(r'profileId', [profileId]);
  }

  bool deleteByProfileIdSync(String profileId) {
    return deleteByIndexSync(r'profileId', [profileId]);
  }

  Future<List<ProfileImage?>> getAllByProfileId(List<String> profileIdValues) {
    final values = profileIdValues.map((e) => [e]).toList();
    return getAllByIndex(r'profileId', values);
  }

  List<ProfileImage?> getAllByProfileIdSync(List<String> profileIdValues) {
    final values = profileIdValues.map((e) => [e]).toList();
    return getAllByIndexSync(r'profileId', values);
  }

  Future<int> deleteAllByProfileId(List<String> profileIdValues) {
    final values = profileIdValues.map((e) => [e]).toList();
    return deleteAllByIndex(r'profileId', values);
  }

  int deleteAllByProfileIdSync(List<String> profileIdValues) {
    final values = profileIdValues.map((e) => [e]).toList();
    return deleteAllByIndexSync(r'profileId', values);
  }

  Future<Id> putByProfileId(ProfileImage object) {
    return putByIndex(r'profileId', object);
  }

  Id putByProfileIdSync(ProfileImage object, {bool saveLinks = true}) {
    return putByIndexSync(r'profileId', object, saveLinks: saveLinks);
  }

  Future<List<Id>> putAllByProfileId(List<ProfileImage> objects) {
    return putAllByIndex(r'profileId', objects);
  }

  List<Id> putAllByProfileIdSync(List<ProfileImage> objects,
      {bool saveLinks = true}) {
    return putAllByIndexSync(r'profileId', objects, saveLinks: saveLinks);
  }
}

extension ProfileImageQueryWhereSort
    on QueryBuilder<ProfileImage, ProfileImage, QWhere> {
  QueryBuilder<ProfileImage, ProfileImage, QAfterWhere> anyLocalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension ProfileImageQueryWhere
    on QueryBuilder<ProfileImage, ProfileImage, QWhereClause> {
  QueryBuilder<ProfileImage, ProfileImage, QAfterWhereClause> localIdEqualTo(
      Id localId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: localId,
        upper: localId,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterWhereClause> localIdNotEqualTo(
      Id localId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: localId, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: localId, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: localId, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: localId, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterWhereClause>
      localIdGreaterThan(Id localId, {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: localId, includeLower: include),
      );
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterWhereClause> localIdLessThan(
      Id localId,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: localId, includeUpper: include),
      );
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterWhereClause> localIdBetween(
    Id lowerLocalId,
    Id upperLocalId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerLocalId,
        includeLower: includeLower,
        upper: upperLocalId,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterWhereClause> profileIdEqualTo(
      String profileId) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IndexWhereClause.equalTo(
        indexName: r'profileId',
        value: [profileId],
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterWhereClause>
      profileIdNotEqualTo(String profileId) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'profileId',
              lower: [],
              upper: [profileId],
              includeUpper: false,
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'profileId',
              lower: [profileId],
              includeLower: false,
              upper: [],
            ));
      } else {
        return query
            .addWhereClause(IndexWhereClause.between(
              indexName: r'profileId',
              lower: [profileId],
              includeLower: false,
              upper: [],
            ))
            .addWhereClause(IndexWhereClause.between(
              indexName: r'profileId',
              lower: [],
              upper: [profileId],
              includeUpper: false,
            ));
      }
    });
  }
}

extension ProfileImageQueryFilter
    on QueryBuilder<ProfileImage, ProfileImage, QFilterCondition> {
  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      localIdEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'localId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      localIdGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'localId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      localIdLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'localId',
        value: value,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      localIdBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'localId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'mainPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'mainPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'mainPhoto',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'mainPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'mainPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'mainPhoto',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'mainPhoto',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'mainPhoto',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      mainPhotoIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'mainPhoto',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo2EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo2GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photo2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo2LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photo2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo2Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photo2',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo2StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photo2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo2EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photo2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo2Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photo2',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo2Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photo2',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo2IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo2',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo2IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photo2',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo3EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo3GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photo3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo3LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photo3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo3Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photo3',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo3StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photo3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo3EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photo3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo3Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photo3',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo3Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photo3',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo3IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo3',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo3IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photo3',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo4EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo4GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photo4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo4LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photo4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo4Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photo4',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo4StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photo4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo4EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photo4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo4Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photo4',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo4Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photo4',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo4IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo4',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo4IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photo4',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo5EqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo5GreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'photo5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo5LessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'photo5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo5Between(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'photo5',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo5StartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'photo5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo5EndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'photo5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo5Contains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'photo5',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition> photo5Matches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'photo5',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo5IsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'photo5',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      photo5IsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'photo5',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdEqualTo(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdGreaterThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'profileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdLessThan(
    String value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'profileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdBetween(
    String lower,
    String upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'profileId',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'profileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'profileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdContains(String value, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'profileId',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdMatches(String pattern, {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'profileId',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'profileId',
        value: '',
      ));
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterFilterCondition>
      profileIdIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'profileId',
        value: '',
      ));
    });
  }
}

extension ProfileImageQueryObject
    on QueryBuilder<ProfileImage, ProfileImage, QFilterCondition> {}

extension ProfileImageQueryLinks
    on QueryBuilder<ProfileImage, ProfileImage, QFilterCondition> {}

extension ProfileImageQuerySortBy
    on QueryBuilder<ProfileImage, ProfileImage, QSortBy> {
  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByMainPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainPhoto', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByMainPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainPhoto', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByPhoto2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo2', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByPhoto2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo2', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByPhoto3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo3', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByPhoto3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo3', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByPhoto4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo4', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByPhoto4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo4', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByPhoto5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo5', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByPhoto5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo5', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByProfileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileId', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> sortByProfileIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileId', Sort.desc);
    });
  }
}

extension ProfileImageQuerySortThenBy
    on QueryBuilder<ProfileImage, ProfileImage, QSortThenBy> {
  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByLocalId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localId', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByLocalIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'localId', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByMainPhoto() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainPhoto', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByMainPhotoDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'mainPhoto', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByPhoto2() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo2', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByPhoto2Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo2', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByPhoto3() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo3', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByPhoto3Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo3', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByPhoto4() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo4', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByPhoto4Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo4', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByPhoto5() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo5', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByPhoto5Desc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'photo5', Sort.desc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByProfileId() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileId', Sort.asc);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QAfterSortBy> thenByProfileIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'profileId', Sort.desc);
    });
  }
}

extension ProfileImageQueryWhereDistinct
    on QueryBuilder<ProfileImage, ProfileImage, QDistinct> {
  QueryBuilder<ProfileImage, ProfileImage, QDistinct> distinctByMainPhoto(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'mainPhoto', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QDistinct> distinctByPhoto2(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photo2', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QDistinct> distinctByPhoto3(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photo3', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QDistinct> distinctByPhoto4(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photo4', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QDistinct> distinctByPhoto5(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'photo5', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<ProfileImage, ProfileImage, QDistinct> distinctByProfileId(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'profileId', caseSensitive: caseSensitive);
    });
  }
}

extension ProfileImageQueryProperty
    on QueryBuilder<ProfileImage, ProfileImage, QQueryProperty> {
  QueryBuilder<ProfileImage, int, QQueryOperations> localIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'localId');
    });
  }

  QueryBuilder<ProfileImage, String, QQueryOperations> mainPhotoProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'mainPhoto');
    });
  }

  QueryBuilder<ProfileImage, String, QQueryOperations> photo2Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photo2');
    });
  }

  QueryBuilder<ProfileImage, String, QQueryOperations> photo3Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photo3');
    });
  }

  QueryBuilder<ProfileImage, String, QQueryOperations> photo4Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photo4');
    });
  }

  QueryBuilder<ProfileImage, String, QQueryOperations> photo5Property() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'photo5');
    });
  }

  QueryBuilder<ProfileImage, String, QQueryOperations> profileIdProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'profileId');
    });
  }
}
