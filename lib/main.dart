import 'package:bytebank/database/dao/contact_dao.dart';
import 'package:bytebank/models/contact.dart';
import 'package:bytebank/screens/dashboard.dart';
import 'package:bytebank/widgets/app_dependencies.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';

void main() {
  runApp(BytebankApp(contactDao: ContactDao(),));
}

class BytebankApp extends StatelessWidget {

  final ContactDao contactDao;

  BytebankApp({@required this.contactDao});

  @override
  Widget build(BuildContext context) {
    return AppDependencies(
      contactDao: contactDao,
      child: MaterialApp(
        theme: ThemeData(
          primaryColor: Colors.green[900],
          accentColor: Colors.blueAccent[700],
          buttonTheme: ButtonThemeData(
            buttonColor: Colors.blueAccent[700],
            textTheme: ButtonTextTheme.primary,
          ),
        ),
        home: Dashboard(),
      ),
    );
  }
}
