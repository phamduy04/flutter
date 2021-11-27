import 'package:app_selling_books_online_provider/models/ds_khach_hang.dart';
import 'package:flutter/material.dart';

class KhListProvider with ChangeNotifier {
  DanhSachKH danhSachKH = DanhSachKH();

  updateKhListProvider({required DanhSachKH danhSachKH}) {
    this.danhSachKH = danhSachKH;
    //notifyListeners();
    
  }
}
