import 'dart:convert';
import 'dart:io';

class HCN {
  double? chieuDai;
  double? chieuRong;
  HCN({this.chieuDai, this.chieuRong});

  double tinhChuVi() {
    return (this.chieuDai! + chieuRong!) / 2;
  }

  double tinhDientinh() {
    return this.chieuDai! * this.chieuRong!;
  }

  void input(String hcn) {
    print("nhập chiều dài của hình $hcn:");
    chieuDai = double.parse(stdin.readLineSync(encoding: utf8)!);
    print("nhập chiều rộng của  hình $hcn:");
    chieuRong = double.parse(stdin.readLineSync(encoding: utf8)!);
  }

  void getInfor(String hcn) {
    print("=> hình $hcn có chiều dài= ${this.chieuDai}" +
        ", chiều rộng=${this.chieuRong}" +
        "\n" +
        "chu vi=${this.tinhChuVi()}, diện tích =${this.tinhDientinh()}");
  }
}
