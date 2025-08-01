part of 'stripe_payment_cubit.dart';

@immutable
sealed class StripePaymentState {}

final class StripePaymentInitial extends StripePaymentState {}

final class StripePaymentLoading extends StripePaymentState {}

final class StripePaymentFailure extends StripePaymentState {
  final String errMessage;
  StripePaymentFailure({required this.errMessage});
}

final class StripePaymentSuccess extends StripePaymentState {}
