class Biller {
  final String billerID;
  final String name;

  Biller({required this.billerID, required this.name});

  factory Biller.fromJson(Map<String, dynamic> json) {
    return Biller(
      billerID: json['BillerID'],
      name: json['Name'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'BillerID': billerID,
      'Name': name,
    };
  }
}
