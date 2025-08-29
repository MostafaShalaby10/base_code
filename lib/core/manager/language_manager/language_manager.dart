import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../services/shared_prefrences.dart';

part 'language_manager_state.dart';

class LanguageManager extends Cubit<LanguageManagerState> {
  LanguageManager() : super(LanguageManagerInitial());
  void toggleLanguage() async{
    if (await SharedPrefs.getData(key: "language") == "ar") {
     await SharedPrefs.saveData(key: "language", value: "en");
      emit(LanguageManagerEngilish());
    } else {
     await SharedPrefs.saveData(key: "language", value: "ar");
      emit(LanguageManagerArabic());
    }
  }
}
