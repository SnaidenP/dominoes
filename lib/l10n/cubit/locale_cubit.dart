import 'dart:developer' as developer;
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:dominoes/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class LocaleCubit extends Cubit<Locale> {
  LocaleCubit() : super(const Locale('en')) {
    _loadLocale();
  }

  Future<void> _loadLocale() async {
    final prefs = await SharedPreferences.getInstance();
    final localeCode = prefs.getString('locale');

    if (localeCode == null) {
      final deviceLocale = Platform.localeName.split('_').first;

      developer.log('Device locale: $deviceLocale');

      emit(_getSupportedLocale(deviceLocale));
    } else {
      emit(_getSupportedLocale(localeCode));
    }
  }

  Future<void> setLocale(Locale locale) async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setString('locale', locale.languageCode);
    emit(locale);
  }

  Locale _getSupportedLocale(String code) {
    final locale = AppLocalizations.supportedLocales.firstWhere(
      (locale) => locale.languageCode == code,
      orElse: () => const Locale('en'),
    );
    return locale;
  }
}
