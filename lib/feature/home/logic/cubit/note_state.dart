part of 'note_cubit.dart';

@immutable
sealed class NoteState {}

final class NoteInitial extends NoteState {}

class NoteUpdated extends NoteState {
  final List<NoteModel> notes;

  NoteUpdated(this.notes);
}
