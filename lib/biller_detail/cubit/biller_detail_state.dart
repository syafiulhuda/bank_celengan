import 'package:equatable/equatable.dart';
import 'package:bank_celengan/biller_detail/models/biller_detail_model.dart';

abstract class BillerDetailState extends Equatable {
  const BillerDetailState();

  @override
  List<Object?> get props => [];
}

class BillerDetailInitial extends BillerDetailState {}

class BillerDetailLoading extends BillerDetailState {}

class BillerDetailLoaded extends BillerDetailState {
  final BillerDetail biller;

  BillerDetailLoaded(this.biller);

  @override
  List<Object?> get props => [biller];
}

class BillerDetailError extends BillerDetailState {
  final String errorMessage;

  BillerDetailError(this.errorMessage);

  @override
  List<Object?> get props => [errorMessage];
}
