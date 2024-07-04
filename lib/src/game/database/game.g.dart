// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'game.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetGameCollection on Isar {
  IsarCollection<Game> get games => this.collection();
}

const GameSchema = CollectionSchema(
  name: r'Game',
  id: -6261407721091271860,
  properties: {
    r'teamAname': PropertySchema(
      id: 0,
      name: r'teamAname',
      type: IsarType.string,
    ),
    r'teamBname': PropertySchema(
      id: 1,
      name: r'teamBname',
      type: IsarType.string,
    ),
    r'totalScoreA': PropertySchema(
      id: 2,
      name: r'totalScoreA',
      type: IsarType.long,
    ),
    r'totalScoreB': PropertySchema(
      id: 3,
      name: r'totalScoreB',
      type: IsarType.long,
    )
  },
  estimateSize: _gameEstimateSize,
  serialize: _gameSerialize,
  deserialize: _gameDeserialize,
  deserializeProp: _gameDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _gameGetId,
  getLinks: _gameGetLinks,
  attach: _gameAttach,
  version: '3.1.0+1',
);

int _gameEstimateSize(
  Game object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.teamAname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.teamBname;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _gameSerialize(
  Game object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.teamAname);
  writer.writeString(offsets[1], object.teamBname);
  writer.writeLong(offsets[2], object.totalScoreA);
  writer.writeLong(offsets[3], object.totalScoreB);
}

Game _gameDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Game();
  object.id = id;
  object.teamAname = reader.readStringOrNull(offsets[0]);
  object.teamBname = reader.readStringOrNull(offsets[1]);
  object.totalScoreA = reader.readLongOrNull(offsets[2]);
  object.totalScoreB = reader.readLongOrNull(offsets[3]);
  return object;
}

P _gameDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readLongOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _gameGetId(Game object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _gameGetLinks(Game object) {
  return [];
}

void _gameAttach(IsarCollection<dynamic> col, Id id, Game object) {
  object.id = id;
}

extension GameQueryWhereSort on QueryBuilder<Game, Game, QWhere> {
  QueryBuilder<Game, Game, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension GameQueryWhere on QueryBuilder<Game, Game, QWhereClause> {
  QueryBuilder<Game, Game, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Game, Game, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Game, Game, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Game, Game, QAfterWhereClause> idBetween(
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

extension GameQueryFilter on QueryBuilder<Game, Game, QFilterCondition> {
  QueryBuilder<Game, Game, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Game, Game, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Game, Game, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teamAname',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teamAname',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamAname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teamAname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teamAname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teamAname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teamAname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teamAname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teamAname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teamAname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamAname',
        value: '',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamAnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teamAname',
        value: '',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teamBname',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teamBname',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamBname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teamBname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teamBname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teamBname',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'teamBname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'teamBname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'teamBname',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'teamBname',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamBname',
        value: '',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> teamBnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teamBname',
        value: '',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreAIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalScoreA',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreAIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalScoreA',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreAEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalScoreA',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreAGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalScoreA',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreALessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalScoreA',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreABetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalScoreA',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreBIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'totalScoreB',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreBIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'totalScoreB',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreBEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'totalScoreB',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreBGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'totalScoreB',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreBLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'totalScoreB',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> totalScoreBBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'totalScoreB',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension GameQueryObject on QueryBuilder<Game, Game, QFilterCondition> {}

extension GameQueryLinks on QueryBuilder<Game, Game, QFilterCondition> {}

extension GameQuerySortBy on QueryBuilder<Game, Game, QSortBy> {
  QueryBuilder<Game, Game, QAfterSortBy> sortByTeamAname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAname', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByTeamAnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAname', Sort.desc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByTeamBname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBname', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByTeamBnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBname', Sort.desc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByTotalScoreA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalScoreA', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByTotalScoreADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalScoreA', Sort.desc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByTotalScoreB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalScoreB', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByTotalScoreBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalScoreB', Sort.desc);
    });
  }
}

extension GameQuerySortThenBy on QueryBuilder<Game, Game, QSortThenBy> {
  QueryBuilder<Game, Game, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByTeamAname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAname', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByTeamAnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAname', Sort.desc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByTeamBname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBname', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByTeamBnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBname', Sort.desc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByTotalScoreA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalScoreA', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByTotalScoreADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalScoreA', Sort.desc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByTotalScoreB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalScoreB', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByTotalScoreBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'totalScoreB', Sort.desc);
    });
  }
}

extension GameQueryWhereDistinct on QueryBuilder<Game, Game, QDistinct> {
  QueryBuilder<Game, Game, QDistinct> distinctByTeamAname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teamAname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Game, Game, QDistinct> distinctByTeamBname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teamBname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Game, Game, QDistinct> distinctByTotalScoreA() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalScoreA');
    });
  }

  QueryBuilder<Game, Game, QDistinct> distinctByTotalScoreB() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'totalScoreB');
    });
  }
}

extension GameQueryProperty on QueryBuilder<Game, Game, QQueryProperty> {
  QueryBuilder<Game, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Game, String?, QQueryOperations> teamAnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teamAname');
    });
  }

  QueryBuilder<Game, String?, QQueryOperations> teamBnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teamBname');
    });
  }

  QueryBuilder<Game, int?, QQueryOperations> totalScoreAProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalScoreA');
    });
  }

  QueryBuilder<Game, int?, QQueryOperations> totalScoreBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'totalScoreB');
    });
  }
}
