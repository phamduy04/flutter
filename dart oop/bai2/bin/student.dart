import 'person.dart';
import 'person_sample.dart';

class Student extends Person {
  int? _mark;
  String? _grade;

  Student(this._mark, this._grade, {id, name}) : super(id: id, name: name);
  int get mark => this._mark!;
  void setMark(int mark) {
    this._mark = mark;
  }

  String get grade => this._grade!;

  @override
  void display() {
    print(" mark:${this._mark}");
    print(" grade: ${this._grade}");
  }
}
