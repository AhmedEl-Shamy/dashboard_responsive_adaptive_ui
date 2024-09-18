enum TransactionType {
  withdraw,
  deposite,
}

class TransactionModel {
  final String name, amount, date;
  final TransactionType transctionType;

  const TransactionModel({
    required this.name,
    required this.amount,
    required this.date,
    required this.transctionType,
  });
}
