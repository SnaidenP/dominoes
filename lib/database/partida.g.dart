// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partida.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPartidaCollection on Isar {
  IsarCollection<Partida> get partidas => this.collection();
}

const PartidaSchema = CollectionSchema(
  name: r'Partida',
  id: 4805967368479017827,
  properties: {
    r'limite': PropertySchema(
      id: 0,
      name: r'limite',
      type: IsarType.long,
    ),
    r'nombreEquipoA': PropertySchema(
      id: 1,
      name: r'nombreEquipoA',
      type: IsarType.string,
    ),
    r'nombreEquipoB': PropertySchema(
      id: 2,
      name: r'nombreEquipoB',
      type: IsarType.string,
    ),
    r'puntajeEquipoA': PropertySchema(
      id: 3,
      name: r'puntajeEquipoA',
      type: IsarType.long,
    ),
    r'puntajeEquipoB': PropertySchema(
      id: 4,
      name: r'puntajeEquipoB',
      type: IsarType.long,
    )
  },
  estimateSize: _partidaEstimateSize,
  serialize: _partidaSerialize,
  deserialize: _partidaDeserialize,
  deserializeProp: _partidaDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _partidaGetId,
  getLinks: _partidaGetLinks,
  attach: _partidaAttach,
  version: '3.1.0+1',
);

int _partidaEstimateSize(
  Partida object,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  var bytesCount = offsets.last;
  {
    final value = object.nombreEquipoA;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  {
    final value = object.nombreEquipoB;
    if (value != null) {
      bytesCount += 3 + value.length * 3;
    }
  }
  return bytesCount;
}

void _partidaSerialize(
  Partida object,
  IsarWriter writer,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  writer.writeLong(offsets[0], object.limite);
  writer.writeString(offsets[1], object.nombreEquipoA);
  writer.writeString(offsets[2], object.nombreEquipoB);
  writer.writeLong(offsets[3], object.puntajeEquipoA);
  writer.writeLong(offsets[4], object.puntajeEquipoB);
}

Partida _partidaDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Partida();
  object.id = id;
  object.limite = reader.readLongOrNull(offsets[0]);
  object.nombreEquipoA = reader.readStringOrNull(offsets[1]);
  object.nombreEquipoB = reader.readStringOrNull(offsets[2]);
  object.puntajeEquipoA = reader.readLongOrNull(offsets[3]);
  object.puntajeEquipoB = reader.readLongOrNull(offsets[4]);
  return object;
}

P _partidaDeserializeProp<P>(
  IsarReader reader,
  int propertyId,
  int offset,
  Map<Type, List<int>> allOffsets,
) {
  switch (propertyId) {
    case 0:
      return (reader.readLongOrNull(offset)) as P;
    case 1:
      return (reader.readStringOrNull(offset)) as P;
    case 2:
      return (reader.readStringOrNull(offset)) as P;
    case 3:
      return (reader.readLongOrNull(offset)) as P;
    case 4:
      return (reader.readLongOrNull(offset)) as P;
    default:
      throw IsarError('Unknown property with id $propertyId');
  }
}

Id _partidaGetId(Partida object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _partidaGetLinks(Partida object) {
  return [];
}

void _partidaAttach(IsarCollection<dynamic> col, Id id, Partida object) {
  object.id = id;
}

extension PartidaQueryWhereSort on QueryBuilder<Partida, Partida, QWhere> {
  QueryBuilder<Partida, Partida, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PartidaQueryWhere on QueryBuilder<Partida, Partida, QWhereClause> {
  QueryBuilder<Partida, Partida, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Partida, Partida, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Partida, Partida, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Partida, Partida, QAfterWhereClause> idBetween(
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

extension PartidaQueryFilter
    on QueryBuilder<Partida, Partida, QFilterCondition> {
  QueryBuilder<Partida, Partida, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Partida, Partida, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Partida, Partida, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Partida, Partida, QAfterFilterCondition> limiteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'limite',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> limiteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'limite',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> limiteEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'limite',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> limiteGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'limite',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> limiteLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'limite',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> limiteBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'limite',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoAIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombreEquipoA',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      nombreEquipoAIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombreEquipoA',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoAEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreEquipoA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      nombreEquipoAGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombreEquipoA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoALessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombreEquipoA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoABetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombreEquipoA',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoAStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombreEquipoA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoAEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombreEquipoA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoAContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreEquipoA',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoAMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreEquipoA',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoAIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreEquipoA',
        value: '',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      nombreEquipoAIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreEquipoA',
        value: '',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoBIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombreEquipoB',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      nombreEquipoBIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombreEquipoB',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoBEqualTo(
    String? value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreEquipoB',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      nombreEquipoBGreaterThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'nombreEquipoB',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoBLessThan(
    String? value, {
    bool include = false,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'nombreEquipoB',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoBBetween(
    String? lower,
    String? upper, {
    bool includeLower = true,
    bool includeUpper = true,
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'nombreEquipoB',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoBStartsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.startsWith(
        property: r'nombreEquipoB',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoBEndsWith(
    String value, {
    bool caseSensitive = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.endsWith(
        property: r'nombreEquipoB',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoBContains(
      String value,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.contains(
        property: r'nombreEquipoB',
        value: value,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoBMatches(
      String pattern,
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.matches(
        property: r'nombreEquipoB',
        wildcard: pattern,
        caseSensitive: caseSensitive,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> nombreEquipoBIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreEquipoB',
        value: '',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      nombreEquipoBIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreEquipoB',
        value: '',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> puntajeEquipoAIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'puntajeEquipoA',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      puntajeEquipoAIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'puntajeEquipoA',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> puntajeEquipoAEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'puntajeEquipoA',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      puntajeEquipoAGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'puntajeEquipoA',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> puntajeEquipoALessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'puntajeEquipoA',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> puntajeEquipoABetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'puntajeEquipoA',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> puntajeEquipoBIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'puntajeEquipoB',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      puntajeEquipoBIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'puntajeEquipoB',
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> puntajeEquipoBEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'puntajeEquipoB',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition>
      puntajeEquipoBGreaterThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        include: include,
        property: r'puntajeEquipoB',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> puntajeEquipoBLessThan(
    int? value, {
    bool include = false,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.lessThan(
        include: include,
        property: r'puntajeEquipoB',
        value: value,
      ));
    });
  }

  QueryBuilder<Partida, Partida, QAfterFilterCondition> puntajeEquipoBBetween(
    int? lower,
    int? upper, {
    bool includeLower = true,
    bool includeUpper = true,
  }) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.between(
        property: r'puntajeEquipoB',
        lower: lower,
        includeLower: includeLower,
        upper: upper,
        includeUpper: includeUpper,
      ));
    });
  }
}

extension PartidaQueryObject
    on QueryBuilder<Partida, Partida, QFilterCondition> {}

extension PartidaQueryLinks
    on QueryBuilder<Partida, Partida, QFilterCondition> {}

extension PartidaQuerySortBy on QueryBuilder<Partida, Partida, QSortBy> {
  QueryBuilder<Partida, Partida, QAfterSortBy> sortByLimite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limite', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> sortByLimiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limite', Sort.desc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> sortByNombreEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoA', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> sortByNombreEquipoADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoA', Sort.desc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> sortByNombreEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoB', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> sortByNombreEquipoBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoB', Sort.desc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> sortByPuntajeEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoA', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> sortByPuntajeEquipoADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoA', Sort.desc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> sortByPuntajeEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoB', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> sortByPuntajeEquipoBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoB', Sort.desc);
    });
  }
}

extension PartidaQuerySortThenBy
    on QueryBuilder<Partida, Partida, QSortThenBy> {
  QueryBuilder<Partida, Partida, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByLimite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limite', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByLimiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limite', Sort.desc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByNombreEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoA', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByNombreEquipoADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoA', Sort.desc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByNombreEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoB', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByNombreEquipoBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoB', Sort.desc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByPuntajeEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoA', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByPuntajeEquipoADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoA', Sort.desc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByPuntajeEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoB', Sort.asc);
    });
  }

  QueryBuilder<Partida, Partida, QAfterSortBy> thenByPuntajeEquipoBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoB', Sort.desc);
    });
  }
}

extension PartidaQueryWhereDistinct
    on QueryBuilder<Partida, Partida, QDistinct> {
  QueryBuilder<Partida, Partida, QDistinct> distinctByLimite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'limite');
    });
  }

  QueryBuilder<Partida, Partida, QDistinct> distinctByNombreEquipoA(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreEquipoA',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Partida, Partida, QDistinct> distinctByNombreEquipoB(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreEquipoB',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Partida, Partida, QDistinct> distinctByPuntajeEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'puntajeEquipoA');
    });
  }

  QueryBuilder<Partida, Partida, QDistinct> distinctByPuntajeEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'puntajeEquipoB');
    });
  }
}

extension PartidaQueryProperty
    on QueryBuilder<Partida, Partida, QQueryProperty> {
  QueryBuilder<Partida, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Partida, int?, QQueryOperations> limiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'limite');
    });
  }

  QueryBuilder<Partida, String?, QQueryOperations> nombreEquipoAProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreEquipoA');
    });
  }

  QueryBuilder<Partida, String?, QQueryOperations> nombreEquipoBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreEquipoB');
    });
  }

  QueryBuilder<Partida, int?, QQueryOperations> puntajeEquipoAProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'puntajeEquipoA');
    });
  }

  QueryBuilder<Partida, int?, QQueryOperations> puntajeEquipoBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'puntajeEquipoB');
    });
  }
}
