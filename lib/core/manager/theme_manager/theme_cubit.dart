import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../services/shared_prefrences.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  ThemeCubit() : super(ThemeInitial());
 void toggleTheme() async{
    if (await SharedPrefs.getData(key: "theme") == "dark") {
     await SharedPrefs.saveData(key: "theme", value: "light");
      emit(ThemeLight());
    } else {
     await SharedPrefs.saveData(key: "theme", value: "dark");
      emit(ThemeDark());
    }
  }
}
