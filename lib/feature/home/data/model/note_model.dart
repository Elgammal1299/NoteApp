import 'package:hive/hive.dart';

part 'note_model.g.dart'; // جزء لتوليد الأكواد (لا تنسَ تشغيل الأمر لتوليد الملفات)

@HiveType(typeId: 0) // تعريف نوع الـ Hive
class NoteModel extends HiveObject {
  // يجب أن يرث من HiveObject لتوفير خصائص مثل الحذف
  @HiveField(0)
  String title; // عنوان الملاحظة

  @HiveField(1)
  String? content; // محتوى الملاحظة (يمكن أن يكون فارغًا)

  @HiveField(2)
  String? audioPath; // مسار التسجيل الصوتي (يمكن أن يكون فارغًا)

  @HiveField(3)
  DateTime? createdAt; // تاريخ إنشاء الملاحظة

  // Constructor (المُنشئ) لتحديد القيم
  NoteModel({
    required this.title,
    this.content,
    this.audioPath,
  }) : createdAt = DateTime.now(); // تعيين التاريخ الحالي عند الإنشاء
}
