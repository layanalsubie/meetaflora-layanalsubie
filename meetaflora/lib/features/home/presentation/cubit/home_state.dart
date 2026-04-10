import 'package:equatable/equatable.dart';
import 'package:meetaflora/features/home/domain/entities/home_entity.dart';

abstract class HomeState extends Equatable {
  const HomeState();

  @override
  List<Object?> get props => [];
}

class HomeInitialState extends HomeState {}

class HomeLoadingState extends HomeState {}

class HomeSuccessState extends HomeState {
  final List<HomeEntity> plants;

  const HomeSuccessState({required this.plants});

  @override
  List<Object?> get props => [plants];
}

class HomeErrorState extends HomeState {
  final String message;

  const HomeErrorState({required this.message});

  @override
  List<Object?> get props => [message];
}