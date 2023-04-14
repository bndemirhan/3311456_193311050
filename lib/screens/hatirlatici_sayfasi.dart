import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart'; // Eklenen import
import '../main.dart';

class AlarmPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hatırlatıcılar')),
      body: Center(
        child: Text('Hatırlatıcı sayfası '),
      ),
    );
  }
}
