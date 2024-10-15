// lib/features/notes/data/repositories/note_repository_impl.dart
import 'package:hive/hive.dart';
import 'package:note_app/feature/home/data/model/note_model.dart';

class NoteRepo {
  final Box<NoteModel> noteBox;

  NoteRepo(this.noteBox);

  // إضافة ملاحظة جديدة
  Future<void> addNote(NoteModel note) async {
    await noteBox.add(note);
  }

  // حذف ملاحظة حسب الفهرس
  Future<void> deleteNoteAt(int index) async {
    await noteBox.deleteAt(index);
  }

  // جلب جميع الملاحظات
  List<NoteModel> getAllNotes() {
    return noteBox.values.toList();
  }
}
