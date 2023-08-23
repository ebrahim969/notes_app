part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesSuceess extends NotesState {}
class NotesImpety extends NotesState{}