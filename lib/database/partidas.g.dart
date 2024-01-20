// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'partidas.dart';

// **************************************************************************
// IsarCollectionGenerator
// **************************************************************************

// coverage:ignore-file
// ignore_for_file: duplicate_ignore, non_constant_identifier_names, constant_identifier_names, invalid_use_of_protected_member, unnecessary_cast, prefer_const_constructors, lines_longer_than_80_chars, require_trailing_commas, inference_failure_on_function_invocation, unnecessary_parenthesis, unnecessary_raw_strings, unnecessary_null_checks, join_return_with_assignment, prefer_final_locals, avoid_js_rounded_ints, avoid_positional_boolean_parameters, always_specify_types

extension GetPartidasCollection on Isar {
  IsarCollection<Partidas> get partidas => this.collection();
}

const PartidasSchema = CollectionSchema(
  name: r'Partidas',
  id: 8804563465527173352,
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
  estimateSize: _partidasEstimateSize,
  serialize: _partidasSerialize,
  deserialize: _partidasDeserialize,
  deserializeProp: _partidasDeserializeProp,
  idName: r'id',
  indexes: {},
  links: {},
  embeddedSchemas: {},
  getId: _partidasGetId,
  getLinks: _partidasGetLinks,
  attach: _partidasAttach,
  version: '3.1.0+1',
);

int _partidasEstimateSize(
  Partidas object,
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

void _partidasSerialize(
  Partidas object,
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

Partidas _partidasDeserialize(
  Id id,
  IsarReader reader,
  List<int> offsets,
  Map<Type, List<int>> allOffsets,
) {
  final object = Partidas();
  object.id = id;
  object.limite = reader.readLongOrNull(offsets[0]);
  object.nombreEquipoA = reader.readStringOrNull(offsets[1]);
  object.nombreEquipoB = reader.readStringOrNull(offsets[2]);
  object.puntajeEquipoA = reader.readLongOrNull(offsets[3]);
  object.puntajeEquipoB = reader.readLongOrNull(offsets[4]);
  return object;
}

P _partidasDeserializeProp<P>(
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

Id _partidasGetId(Partidas object) {
  return object.id;
}

List<IsarLinkBase<dynamic>> _partidasGetLinks(Partidas object) {
  return [];
}

void _partidasAttach(IsarCollection<dynamic> col, Id id, Partidas object) {
  object.id = id;
}

extension PartidasQueryWhereSort on QueryBuilder<Partidas, Partidas, QWhere> {
  QueryBuilder<Partidas, Partidas, QAfterWhere> anyId() {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(const IdWhereClause.any());
    });
  }
}

extension PartidasQueryWhere on QueryBuilder<Partidas, Partidas, QWhereClause> {
  QueryBuilder<Partidas, Partidas, QAfterWhereClause> idEqualTo(Id id) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(IdWhereClause.between(
        lower: id,
        upper: id,
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterWhereClause> idNotEqualTo(Id id) {
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

  QueryBuilder<Partidas, Partidas, QAfterWhereClause> idGreaterThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.greaterThan(lower: id, includeLower: include),
      );
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterWhereClause> idLessThan(Id id,
      {bool include = false}) {
    return QueryBuilder.apply(this, (query) {
      return query.addWhereClause(
        IdWhereClause.lessThan(upper: id, includeUpper: include),
      );
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterWhereClause> idBetween(
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

extension PartidasQueryFilter
    on QueryBuilder<Partidas, Partidas, QFilterCondition> {
  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> idEqualTo(Id value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'id',
        value: value,
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> idGreaterThan(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> idLessThan(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> idBetween(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> limiteIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'limite',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> limiteIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'limite',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> limiteEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'limite',
        value: value,
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> limiteGreaterThan(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> limiteLessThan(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> limiteBetween(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoAIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombreEquipoA',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoAIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombreEquipoA',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoAEqualTo(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoALessThan(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoABetween(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoAStartsWith(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoAEndsWith(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoAContains(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoAMatches(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoAIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreEquipoA',
        value: '',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoAIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreEquipoA',
        value: '',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoBIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'nombreEquipoB',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoBIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'nombreEquipoB',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoBEqualTo(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoBLessThan(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoBBetween(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoBStartsWith(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoBEndsWith(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoBContains(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> nombreEquipoBMatches(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoBIsEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'nombreEquipoB',
        value: '',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      nombreEquipoBIsNotEmpty() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.greaterThan(
        property: r'nombreEquipoB',
        value: '',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      puntajeEquipoAIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'puntajeEquipoA',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      puntajeEquipoAIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'puntajeEquipoA',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> puntajeEquipoAEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'puntajeEquipoA',
        value: value,
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      puntajeEquipoALessThan(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> puntajeEquipoABetween(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      puntajeEquipoBIsNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNull(
        property: r'puntajeEquipoB',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      puntajeEquipoBIsNotNull() {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(const FilterCondition.isNotNull(
        property: r'puntajeEquipoB',
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> puntajeEquipoBEqualTo(
      int? value) {
    return QueryBuilder.apply(this, (query) {
      return query.addFilterCondition(FilterCondition.equalTo(
        property: r'puntajeEquipoB',
        value: value,
      ));
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition>
      puntajeEquipoBLessThan(
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

  QueryBuilder<Partidas, Partidas, QAfterFilterCondition> puntajeEquipoBBetween(
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

extension PartidasQueryObject
    on QueryBuilder<Partidas, Partidas, QFilterCondition> {}

extension PartidasQueryLinks
    on QueryBuilder<Partidas, Partidas, QFilterCondition> {}

extension PartidasQuerySortBy on QueryBuilder<Partidas, Partidas, QSortBy> {
  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByLimite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limite', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByLimiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limite', Sort.desc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByNombreEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoA', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByNombreEquipoADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoA', Sort.desc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByNombreEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoB', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByNombreEquipoBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoB', Sort.desc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByPuntajeEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoA', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByPuntajeEquipoADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoA', Sort.desc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByPuntajeEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoB', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> sortByPuntajeEquipoBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoB', Sort.desc);
    });
  }
}

extension PartidasQuerySortThenBy
    on QueryBuilder<Partidas, Partidas, QSortThenBy> {
  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenById() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByIdDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'id', Sort.desc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByLimite() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limite', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByLimiteDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'limite', Sort.desc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByNombreEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoA', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByNombreEquipoADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoA', Sort.desc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByNombreEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoB', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByNombreEquipoBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'nombreEquipoB', Sort.desc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByPuntajeEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoA', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByPuntajeEquipoADesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoA', Sort.desc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByPuntajeEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoB', Sort.asc);
    });
  }

  QueryBuilder<Partidas, Partidas, QAfterSortBy> thenByPuntajeEquipoBDesc() {
    return QueryBuilder.apply(this, (query) {
      return query.addSortBy(r'puntajeEquipoB', Sort.desc);
    });
  }
}

extension PartidasQueryWhereDistinct
    on QueryBuilder<Partidas, Partidas, QDistinct> {
  QueryBuilder<Partidas, Partidas, QDistinct> distinctByLimite() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'limite');
    });
  }

  QueryBuilder<Partidas, Partidas, QDistinct> distinctByNombreEquipoA(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreEquipoA',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Partidas, Partidas, QDistinct> distinctByNombreEquipoB(
      {bool caseSensitive = true}) {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'nombreEquipoB',
          caseSensitive: caseSensitive);
    });
  }

  QueryBuilder<Partidas, Partidas, QDistinct> distinctByPuntajeEquipoA() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'puntajeEquipoA');
    });
  }

  QueryBuilder<Partidas, Partidas, QDistinct> distinctByPuntajeEquipoB() {
    return QueryBuilder.apply(this, (query) {
      return query.addDistinctBy(r'puntajeEquipoB');
    });
  }
}

extension PartidasQueryProperty
    on QueryBuilder<Partidas, Partidas, QQueryProperty> {
  QueryBuilder<Partidas, int, QQueryOperations> idProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'id');
    });
  }

  QueryBuilder<Partidas, int?, QQueryOperations> limiteProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'limite');
    });
  }

  QueryBuilder<Partidas, String?, QQueryOperations> nombreEquipoAProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreEquipoA');
    });
  }

  QueryBuilder<Partidas, String?, QQueryOperations> nombreEquipoBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'nombreEquipoB');
    });
  }

  QueryBuilder<Partidas, int?, QQueryOperations> puntajeEquipoAProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'puntajeEquipoA');
    });
  }

  QueryBuilder<Partidas, int?, QQueryOperations> puntajeEquipoBProperty() {
    return QueryBuilder.apply(this, (query) {
      return query.addPropertyName(r'puntajeEquipoB');
    });
  }
}
