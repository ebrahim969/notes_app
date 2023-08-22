part of 'notes_cubit.dart';

@immutable
abstract class NotesState {}

class NotesInitial extends NotesState {}
class NotesLoading extends NotesState {}
class NotesSuccess extends NotesState 
{
  final List<NoteModel> notes;

  NotesSuccess(this.notes);
  
}
class NotesFaluier extends NotesState 
{
  final String errMessage;

  NotesFaluier(this.errMessage);
  
}