import 'dart:nativewrappers/_internal/vm/lib/mirrors_patch.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter/rendering.dart';
import 'package:meta/meta.dart';
part 'home_event.dart';
part 'home_state.dart';

class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc() : super(HomeInitial() as HomeState) {
    on<HomeEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}

class HomeInitial {}
