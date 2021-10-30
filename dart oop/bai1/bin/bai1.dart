import 'dart:convert';
import 'dart:io';

import 'package:bai1/bai1.dart' as bai1;

import 'hinh_chu_nhat.dart';
import 'hinh_vuong.dart';

void main(List<String> arguments) {
  HinhVuong hinhVuong = HinhVuong();
  hinhVuong.input("vuông");
  hinhVuong.getInfor("vuông");

  HCN hcn = HCN();
  hcn.input("hcn1");
  hcn.getInfor("hcn1");
  HCN hcn1 = HCN();
  hcn1.input("hcn2");
  hcn1.getInfor("hcn2");
}
