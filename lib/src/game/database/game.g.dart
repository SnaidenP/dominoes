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
    r'date': PropertySchema(
      id: 0,
      name: r'date',
      type: IsarType.dateTime,
    ),
    r'limit': PropertySchema(
      id: 1,
      name: r'limit',
      type: IsarType.long,
    ),
    r'rounds': PropertySchema(
      id: 2,
      name: r'rounds',
      type: IsarType.objectList,
      target: r'Round',
    ),
    r'teamAname': PropertySchema(
      id: 3,
      name: r'teamAname',
      type: IsarType.string,
    ),
    r'teamBname': PropertySchema(
      id: 4,
      name: r'teamBname',
      type: IsarType.string,
    )
  },
  estimateSize: _gameEstimateSize,
  serialize: _gameSerialize,
  deserialize: _gameDeserialize,
  deserializeProp: _gameDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {r'Round': RoundSchema},
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
  bytesCount += 3 + object.rounds.length * 3;
  {
    final offsets = allOffsets[Round]!;
    for (var i = 0; i < object.rounds.length; i++) {
      final value = object.rounds[i];
      bytesCount += RoundSchema.estimateSize(value, offsets, allOffsets);
    }
  }
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
  writer.writeDateTime(offsets[0], object.date);
  writer.writeLong(offsets[1], object.limit);
  writer.writeObjectList<Round>(
    offsets[2],
    allOffsets,
    RoundSchema.serialize,
    object.rounds,
  );
  writer.writeString(offsets[3], object.teamAname);
  writer.writeString(offsets[4], object.teamBname);
}

Game _gameDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Game();
  object.date = reader.readDateTimeOrNull(offsets[0]);
  object.id = id;
  object.limit = reader.readLongOrNull(offsets[1]);
  object.rounds = reader.readObjectList<Round>(
        offsets[2],
        RoundSchema.deserialize,
        allOffsets,
        Round(),
      ) ??
      [];
  object.teamAname = reader.readStringOrNull(offsets[3]);
  object.teamBname = reader.readStringOrNull(offsets[4]);
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
      return (reader.readDateTimeOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readObjectList<Round>(
            offset,
            RoundSchema.deserialize,
            allOffsets,
            Round(),
          ) ??
          []) as P;
    case 3:
      return (reader.readStringOrNull(offset)) as P;
    case 4:
      return (reader.readStringOrNull(offset)) as P;
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
  QueryBuilder<Game, Game, QAfterFilterCondition> dateIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> dateIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'date',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> dateEqualTo(DateTime? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> dateGreaterThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> dateLessThan(
    DateTime? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'date',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> dateBetween(
    DateTime? lower,
    DateTime? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'date',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

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

  QueryBuilder<Game, Game, QAfterFilterCondition> limitIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'limit',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> limitIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'limit',
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> limitEqualTo(int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'limit',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> limitGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'limit',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> limitLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'limit',
        value: value,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> limitBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'limit',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> roundsLengthEqualTo(
      int length) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rounds',
        length,
        true,
        length,
        true,
      );
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> roundsIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rounds',
        0,
        true,
        0,
        true,
      );
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> roundsIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rounds',
        0,
        false,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> roundsLengthLessThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rounds',
        0,
        true,
        length,
        include,
      );
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> roundsLengthGreaterThan(
    int length, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rounds',
        length,
        include,
        999999,
        true,
      );
    });
  }

  QueryBuilder<Game, Game, QAfterFilterCondition> roundsLengthBetween(
    int lower,
    int upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.listLength(
        r'rounds',
        lower,
        includeLower,
        upper,
        includeUpper,
      );
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
}

extension GameQueryObject on QueryBuilder<Game, Game, QFilterCondition> {
  QueryBuilder<Game, Game, QAfterFilterCondition> roundsElement(
      FilterQuery<Round> q) {
    return QueryBuilder.apply(this, (query) {
      return query.object(q, r'rounds');
    });
  }
}

extension GameQueryLinks on QueryBuilder<Game, Game, QFilterCondition> {}

extension GameQuerySortBy on QueryBuilder<Game, Game, QSortBy> {
  QueryBuilder<Game, Game, QAfterSortBy> sortByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limit', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> sortByLimitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limit', Sort.desc);
    });
  }

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
}

extension GameQuerySortThenBy on QueryBuilder<Game, Game, QSortThenBy> {
  QueryBuilder<Game, Game, QAfterSortBy> thenByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByDateDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'date', Sort.desc);
    });
  }

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

  QueryBuilder<Game, Game, QAfterSortBy> thenByLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limit', Sort.asc);
    });
  }

  QueryBuilder<Game, Game, QAfterSortBy> thenByLimitDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limit', Sort.desc);
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
}

extension GameQueryWhereDistinct on QueryBuilder<Game, Game, QDistinct> {
  QueryBuilder<Game, Game, QDistinct> distinctByDate() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'date');
    });
  }

  QueryBuilder<Game, Game, QDistinct> distinctByLimit() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'limit');
    });
  }

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
}

extension GameQueryProperty on QueryBuilder<Game, Game, QQueryProperty> {
  QueryBuilder<Game, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Game, DateTime?, QQueryOperations> dateProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'date');
    });
  }

  QueryBuilder<Game, int?, QQueryOperations> limitProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'limit');
    });
  }

  QueryBuilder<Game, List<Round>, QQueryOperations> roundsProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'rounds');
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
}

// **************************************************************************
// IsarEmbeddedGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

const RoundSchema = Schema(
  name: r'Round',
  id: 8762410198825043196,
  properties: {
    r'teamAname': PropertySchema(
      id: 0,
      name: r'teamAname',
      type: IsarType.string,
    ),
    r'teamAscore': PropertySchema(
      id: 1,
      name: r'teamAscore',
      type: IsarType.long,
    ),
    r'teamBname': PropertySchema(
      id: 2,
      name: r'teamBname',
      type: IsarType.string,
    ),
    r'teamBscore': PropertySchema(
      id: 3,
      name: r'teamBscore',
      type: IsarType.long,
    )
  },
  estimateSize: _roundEstimateSize,
  serialize: _roundSerialize,
  deserialize: _roundDeserialize,
  deserializeProp: _roundDeserializeProp,
);

int _roundEstimateSize(
  Round object,
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

void _roundSerialize(
  Round object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeString(offsets[0], object.teamAname);
  writer.writeLong(offsets[1], object.teamAscore);
  writer.writeString(offsets[2], object.teamBname);
  writer.writeLong(offsets[3], object.teamBscore);
}

Round _roundDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Round();
  object.teamAname = reader.readStringOrNull(offsets[0]);
  object.teamAscore = reader.readLongOrNull(offsets[1]);
  object.teamBname = reader.readStringOrNull(offsets[2]);
  object.teamBscore = reader.readLongOrNull(offsets[3]);
  return object;
}

P _roundDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readStringOrNull(offset)) as P;
    case 1:
      return (reader.readLongOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

extension RoundQueryFilter on QueryBuilder<Round, Round, QFilterCondition> {
  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teamAname',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teamAname',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameEqualTo(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameGreaterThan(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameLessThan(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameBetween(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameStartsWith(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameEndsWith(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameContains(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameMatches(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamAname',
        value: '',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teamAname',
        value: '',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAscoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teamAscore',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAscoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teamAscore',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAscoreEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamAscore',
        value: value,
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAscoreGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teamAscore',
        value: value,
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAscoreLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teamAscore',
        value: value,
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamAscoreBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teamAscore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teamBname',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teamBname',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameEqualTo(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameGreaterThan(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameLessThan(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameBetween(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameStartsWith(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameEndsWith(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameContains(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameMatches(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamBname',
        value: '',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBnameIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'teamBname',
        value: '',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBscoreIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'teamBscore',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBscoreIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'teamBscore',
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBscoreEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'teamBscore',
        value: value,
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBscoreGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'teamBscore',
        value: value,
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBscoreLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'teamBscore',
        value: value,
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> teamBscoreBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'teamBscore',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension RoundQueryObject on QueryBuilder<Round, Round, QFilterCondition> {}
