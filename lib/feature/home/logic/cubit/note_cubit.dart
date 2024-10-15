import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:note_app/core/services/hive_service.dart';
import 'package:note_app/feature/home/data/model/note_model.dart';

part 'note_state.dart';

class NoteCubit extends Cubit<NoteState> {
  final HiveService hiveService;

  NoteCubit(this.hiveService) : super(NoteInitial());

  void addNote(NoteModel note) {
    hiveService.addNote(note);
    loadNotes(); // تحديث الملاحظات بعد الإضافة
  }

  void deleteNoteAt(int index) {
    hiveService.deleteNoteAt(index);
    loadNotes(); // تحديث الملاحظات بعد الحذف
  }

  void loadNotes() {
    final notes = hiveService.getNotes(); // استرجاع الملاحظات
    emit(NoteUpdated(notes)); // تحديث الحالة بالملاحظات الجديدة
  }
}
