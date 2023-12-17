// ignore_for_file: must_be_immutable
import 'package:equatable/equatable.dart';
import 'package:flutter/cupertino.dart';


/// Abstract class for all events that can be dispatched from the
///Login widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseEvent extends Equatable {}

/// Event that is dispatched when the Login widget is first created.
class ChooseInitialEvent extends ChooseEvent {
  @override
  List<Object?> get props => [];
}
