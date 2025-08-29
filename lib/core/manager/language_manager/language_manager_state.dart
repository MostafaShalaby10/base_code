part of 'language_manager.dart';

@immutable
sealed class LanguageManagerState {}

final class LanguageManagerInitial extends LanguageManagerState {}
final class LanguageManagerArabic extends LanguageManagerState {}

final class LanguageManagerEngilish extends LanguageManagerState {}
