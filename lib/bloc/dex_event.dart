part of 'dex_bloc.dart';

abstract class DexEvent {}

class UpdatePageValue extends DexEvent {
  final int newval;

  UpdatePageValue(this.newval);
}

class getPageNumber extends DexEvent {
  final int page_index;
  getPageNumber({required this.page_index});
}
