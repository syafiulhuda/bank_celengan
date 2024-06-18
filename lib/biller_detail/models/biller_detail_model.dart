class BillerDetail {
  final String billerID;
  final int amount;
  final String name;
  final String accountID;
  final bool paid;

  BillerDetail({
    required this.billerID,
    required this.amount,
    required this.name,
    required this.accountID,
    required this.paid,
  });

  factory BillerDetail.fromJson(Map<String, dynamic> json) {
    return BillerDetail(
      billerID: json['BillerID'],
      amount: json['Amount'],
      name: json['Name'],
      accountID: json['AccountID'],
      paid: json['Paid'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'BillerID': billerID,
      'Name': name,
    };
  }
}
