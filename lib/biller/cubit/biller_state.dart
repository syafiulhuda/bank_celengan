part of 'biller_cubit.dart';

@immutable
abstract class BillerState {}

class BillerInitial extends BillerState {}

class BillerLoading extends BillerState {}

class BillerLoaded extends BillerState {
  final List<Biller> billers;

  BillerLoaded(this.billers);
}

class BillerError extends BillerState {
  final String errorMessage;

  BillerError(this.errorMessage);
}
