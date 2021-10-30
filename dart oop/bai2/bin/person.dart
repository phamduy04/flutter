import 'dart:convert';
import 'dart:io';

import 'person_sample.dart';

class Person extends PersonSample {
  String? id;
  String? name;
  int? _age;

  Person({this.id, this.name});

  int get Age => _age!;
  void setAge({required int age}) {
    this._age = age;
    ;
  }

  @override
  void input() {
    // TODO: implement input
  }

  @override
  void display() {}
}
