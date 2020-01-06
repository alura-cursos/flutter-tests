import 'package:intl/intl.dart';

import 'contact.dart';

class Transaction {
  final String id;
  final double value;
  final Contact contact;
  final DateTime dateTime;

  Transaction(
    this.id,
    this.value,
    this.contact, {
    this.dateTime,
  }) : assert(value > 0);

  Transaction.fromJson(Map<String, dynamic> json)
      : id = json['id'],
        value = json['value'],
        dateTime = DateTime.parse(json['dateTime']),
        contact = Contact.fromJson(json['contact']);

  Map<String, dynamic> toJson() => {
        'id': id,
        'value': value,
        'contact': contact.toJson(),
      };

  @override
  String toString() {
    return 'Transaction{value: $value, contact: $contact, dateTime: $dateTime}';
  }

  String getCurrency() {
    NumberFormat formatter = NumberFormat.simpleCurrency();
    return formatter.format(value);
  }

  String getFormattedDateTime(){
//    DateFormat.yMd().add_Hm();
    DateFormat formatter = DateFormat('dd/MM/yyyy HH:mm');
    return formatter.format(dateTime);
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Transaction &&
          runtimeType == other.runtimeType &&
          value == other.value &&
          contact == other.contact;

  @override
  int get hashCode => value.hashCode ^ contact.hashCode;
}
