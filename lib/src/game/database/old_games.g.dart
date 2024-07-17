// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'old_games.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetOldGamesCollection on Isar {
  IsarCollection<OldGames> get oldGames => this.collection();
}

const OldGamesSchema = CollectionSchema(
  name: r'OldGames',
  id: -5158930395844467964,
  properties: {
    r'gameIds': PropertySchema(
      id: 0,
      name: r'gameIds',
      type: IsarType.longList,
    )
  },
  estimateSize: _oldGamesEstimateSize,
  serialize: _oldGamesSerialize,
  deserialize: _oldGamesDeserialize,
  deserializeProp: _oldGamesDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _oldGamesGetId,
  getLinks: _oldGamesGetLinks,
  attach: _oldGamesAttach,
  version: '3.1.0+1',
);

int _oldGamesEstimateSize(
  OldGames object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  bytesCount += 3 + object.gameIds.length * 8;
  return bytesCount;
}

void _oldGamesSerialize(
  OldGames object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLongList(offsets[0], object.gameIds);
}

OldGames _oldGamesDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = OldGames();
  object.gameIds = reader.readLongList(offsets[0]) ?? [];
  object.id = id;
  return object;
}

P _oldGamesDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongList(offset) ?? []) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _oldGamesGetId(OldGames object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _oldGamesGetLinks(OldGames object) {
  return [];
}

void _oldGamesAttach(IsarCollection<dynamic> col, Id id, OldGames object) {
  object.id = id;
}

extension OldGamesQueryWhereSort on QueryBuilder<OldGames, OldGames, QWhere> {
  QueryBuilder<OldGames, OldGames, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension OldGamesQueryWhere on QueryBuilder<OldGames, OldGames, QWhereClause> {
  QueryBuilder<OldGames, OldGames, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterWhereClause> idNotEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      if (query.whereSort == Sort.asc) {
        return query
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            )
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            );
      } else {
        return query
            .addWhereClause(
              IdWhereClause.greaterThan(lower: id, includeLower: false),
            )
            .addWhereClause(
              IdWhereClause.lessThan(upper: id, includeUpper: false),
            );
      }
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterWhereClause> idBetween(
    Id lowerId,
    Id upperId, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: lowerId,
        includeLower: includeLower,
        upper: upperId,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OldGamesQueryFilter
    on QueryBuilder<OldGames, OldGames, QFilterCondition> {
  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> gameIdsElementEqualTo(
      int value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'gameIds',
        value: value,
      ));
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition>
      gameIdsElementGreaterThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'gameIds',
        value: value,
      ));
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition>
      gameIdsElementLessThan(
    int value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'gameIds',
        value: value,
      ));
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> gameIdsElementBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'gameIds',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> gameIdsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> gameIdsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> gameIdsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> gameIdsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition>
      gameIdsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> gameIdsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'gameIds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> idGreaterThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> idLessThan(
    Id value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterFilterCondition> idBetween(
    Id lower,
    Id upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'id',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension OldGamesQueryObject
    on QueryBuilder<OldGames, OldGames, QFilterCondition> {}

extension OldGamesQueryLinks
    on QueryBuilder<OldGames, OldGames, QFilterCondition> {}

extension OldGamesQuerySortBy on QueryBuilder<OldGames, OldGames, QSortBy> {}

extension OldGamesQuerySortThenBy
    on QueryBuilder<OldGames, OldGames, QSortThenBy> {
  QueryBuilder<OldGames, OldGames, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<OldGames, OldGames, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }
}

extension OldGamesQueryWhereDistinct
    on QueryBuilder<OldGames, OldGames, QDistinct> {
  QueryBuilder<OldGames, OldGames, QDistinct> distinctByGameIds() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'gameIds');
    });
  }
}

extension OldGamesQueryProperty
    on QueryBuilder<OldGames, OldGames, QQueryProperty> {
  QueryBuilder<OldGames, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<OldGames, List<int>, QQueryOperations> gameIdsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'gameIds');
    });
  }
}
