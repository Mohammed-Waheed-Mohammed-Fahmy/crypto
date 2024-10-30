import 'package:app/models/mainPages.dart';
import 'package:app/models/news.dart';
import 'package:app/models/notifications.dart';
import 'package:app/models/offers_cards.dart';
import 'package:app/models/onpoardingData.dart';
import 'package:app/models/coinsCards.dart';
import 'package:app/models/sectionCards.dart';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

import 'package:flutter/material.dart';

part 'dex_event.dart';
part 'dex_state.dart';

class DexBloc extends Bloc<DexEvent, DexState> {
  DexBloc() : super(DexState()) {
    on<UpdatePageValue>(_UpdatePageValue);
    on<getPageNumber>(_getPageNumber);
  }

  void _UpdatePageValue(UpdatePageValue event, Emitter<DexState> emit) {
    emit(state.copywith(event.newval));
  }

  void _getPageNumber(getPageNumber event, Emitter<DexState> emit) {
    print("getting page number =================${event.page_index}");
    emit(state.getPageNumber(event.page_index));
  }
}
