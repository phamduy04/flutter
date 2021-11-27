import 'package:app_selling_books_online_provider/models/khach_hang.dart';

class DanhSachKH {
  List<KhachHang> listKH = [];

  void addKhachHang(KhachHang kh) {
    listKH.add(kh);
  }

  double tongDoanhThu() {
    double tien = 0.0;
    for (KhachHang kh in listKH) {
      tien += kh.tinhThanhTien();
    }
    return tien;
  }

  int tongKhachHang() {
    return listKH.length;
  }

  int tongKhachHangVip() {
    int tong = 0;
    for (KhachHang kh in listKH) {
      if (kh.isVip) tong++;
    }
    return tong;
  }
}
