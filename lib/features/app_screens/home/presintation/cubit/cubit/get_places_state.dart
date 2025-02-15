// ignore_for_file: must_be_immutable

part of 'get_places_cubit.dart';

@immutable
sealed class GetPlacesState {}

final class GetPlacesInitial extends GetPlacesState {}

final class GetPlacesLoading extends GetPlacesState {}

final class GetPlacesSuccess extends GetPlacesState {
  List<PopularPlaceEntity> placesentity = [];
  GetPlacesSuccess(this.placesentity);
}

final class GetPlacesFail extends GetPlacesState {
  String error;
  GetPlacesFail(this.error);
}
