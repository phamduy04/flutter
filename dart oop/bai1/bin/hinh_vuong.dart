import 'dart:convert';
import 'dart:io';
import 'dart:math';
import 'hinh_chu_nhat.dart';

class HinhVuong extends HCN {
  double? canh;
  HinhVuong({this.canh}) : super(chieuDai: canh, chieuRong: canh);

  @override
  void input(String hcn) {
    // TODO: implement input
    print(" nhập cạnnh hình $hcn:");
    canh = double.parse(stdin.readLineSync(encoding: utf8)!);
  }

  @override
  void getInfor(String hcn) {
    // TODO: implement getInfor
    print("=>hình $hcn  có cạnh= ${this.canh.toString()}" +
        ",chu vi=${this.tinhChuVi()}, diện tích=${this.tinhDientinh()}" +
        "\n");
  }

  @override
  double tinhChuVi() {
    // TODO: implement tinhChuVi
    return 4 * this.canh!;
  }

  @override
  double tinhDientinh() {
    // TODO: implement tinhDientinh
    return this.canh! * this.canh!;
  }
}
