import 'package:hive/hive.dart';
import 'package:note_app/feature/home/data/model/note_model.dart';

class HiveService {
  final Box<NoteModel> noteBox;

  // Constructor لتعيين صندوق الملاحظات
  HiveService(this.noteBox);

  // إضافة ملاحظة
  Future<void> addNote(NoteModel note) async {
    await noteBox.add(note);
  }

  // حذف ملاحظة بناءً على الفهرس
  Future<void> deleteNoteAt(int index) async {
    await noteBox.deleteAt(index);
  }

  // استرجاع جميع الملاحظات
  List<NoteModel> getNotes() {
    return noteBox.values.toList();
  }
}
