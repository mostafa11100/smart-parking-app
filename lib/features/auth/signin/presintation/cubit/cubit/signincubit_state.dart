// ignore_for_file: must_be_immutable

part of 'signincubit_cubit.dart';

@immutable
sealed class SignincubitState {}

final class SignincubitInitial extends SignincubitState {}

final class SignincubitLoading extends SignincubitState {}

final class SignincubitSuccess extends SignincubitState {
  UserCredential user;
  SignincubitSuccess(this.user);
}

final class SignincubiFail extends SignincubitState {
  String error;
  SignincubiFail(this.error);
}
