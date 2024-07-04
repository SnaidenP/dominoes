// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'round.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetRoundCollection on Isar {
  IsarCollection<Round> get rounds => this.collection();
}

const RoundSchema = CollectionSchema(
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
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _roundGetId,
  getLinks: _roundGetLinks,
  attach: _roundAttach,
  version: '3.1.0+1',
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
  object.id = id;
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

Id _roundGetId(Round object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _roundGetLinks(Round object) {
  return [];
}

void _roundAttach(IsarCollection<dynamic> col, Id id, Round object) {
  object.id = id;
}

extension RoundQueryWhereSort on QueryBuilder<Round, Round, QWhere> {
  QueryBuilder<Round, Round, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension RoundQueryWhere on QueryBuilder<Round, Round, QWhereClause> {
  QueryBuilder<Round, Round, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Round, Round, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Round, Round, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Round, Round, QAfterWhereClause> idBetween(
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

extension RoundQueryFilter on QueryBuilder<Round, Round, QFilterCondition> {
  QueryBuilder<Round, Round, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Round, Round, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Round, Round, QAfterFilterCondition> idBetween(
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

extension RoundQueryLinks on QueryBuilder<Round, Round, QFilterCondition> {}

extension RoundQuerySortBy on QueryBuilder<Round, Round, QSortBy> {
  QueryBuilder<Round, Round, QAfterSortBy> sortByTeamAname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAname', Sort.asc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> sortByTeamAnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAname', Sort.desc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> sortByTeamAscore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAscore', Sort.asc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> sortByTeamAscoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAscore', Sort.desc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> sortByTeamBname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBname', Sort.asc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> sortByTeamBnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBname', Sort.desc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> sortByTeamBscore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBscore', Sort.asc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> sortByTeamBscoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBscore', Sort.desc);
    });
  }
}

extension RoundQuerySortThenBy on QueryBuilder<Round, Round, QSortThenBy> {
  QueryBuilder<Round, Round, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> thenByTeamAname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAname', Sort.asc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> thenByTeamAnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAname', Sort.desc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> thenByTeamAscore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAscore', Sort.asc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> thenByTeamAscoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamAscore', Sort.desc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> thenByTeamBname() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBname', Sort.asc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> thenByTeamBnameDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBname', Sort.desc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> thenByTeamBscore() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBscore', Sort.asc);
    });
  }

  QueryBuilder<Round, Round, QAfterSortBy> thenByTeamBscoreDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'teamBscore', Sort.desc);
    });
  }
}

extension RoundQueryWhereDistinct on QueryBuilder<Round, Round, QDistinct> {
  QueryBuilder<Round, Round, QDistinct> distinctByTeamAname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teamAname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Round, Round, QDistinct> distinctByTeamAscore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teamAscore');
    });
  }

  QueryBuilder<Round, Round, QDistinct> distinctByTeamBname(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teamBname', caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Round, Round, QDistinct> distinctByTeamBscore() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'teamBscore');
    });
  }
}

extension RoundQueryProperty on QueryBuilder<Round, Round, QQueryProperty> {
  QueryBuilder<Round, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Round, String?, QQueryOperations> teamAnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teamAname');
    });
  }

  QueryBuilder<Round, int?, QQueryOperations> teamAscoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teamAscore');
    });
  }

  QueryBuilder<Round, String?, QQueryOperations> teamBnameProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teamBname');
    });
  }

  QueryBuilder<Round, int?, QQueryOperations> teamBscoreProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'teamBscore');
    });
  }
}
