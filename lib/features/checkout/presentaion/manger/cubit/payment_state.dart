part of 'payment_cubit.dart';

@immutable
sealed class PaymentState {}

final class PaymentInitial extends PaymentState {}
final class PaymentLoadig extends PaymentState {}
final class PaymentFailure extends PaymentState {
  final String errorMessage;

  PaymentFailure({required this.errorMessage});
}
final class PaymentSuccess extends PaymentState {}
