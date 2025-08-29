import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'file_manager_state.dart';

class FileManager extends Cubit<FileManagerState> {
  FileManager() : super(FileManagerInitial());
}
