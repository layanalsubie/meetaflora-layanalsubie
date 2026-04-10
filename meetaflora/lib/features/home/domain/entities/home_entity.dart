import 'package:equatable/equatable.dart';

class HomeEntity extends Equatable {
  final int id;
  final String photographer;
  final String imageUrl;
  final String alt;

  const HomeEntity({
    required this.id,
    required this.photographer,
    required this.imageUrl,
    required this.alt,
  });

  @override
  List<Object?> get props => [id, photographer, imageUrl];
}
