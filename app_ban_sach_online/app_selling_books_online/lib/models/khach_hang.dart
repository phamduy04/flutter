class KhachHang {
  String? _tenKH;
  int? _slmua;
  bool? _isVip;
  static const double gia = 20000;
  KhachHang(this._tenKH, this._slmua, this._isVip);

  String get tenKH => _tenKH!;
  int get slmua => _slmua!;
  bool get isVip => _isVip!;
  set tenKH(String tenKH) {
    _tenKH = tenKH;
  }

  set slmua(int slmua) {
    _slmua = slmua;
  }

  set isVip(bool isVip) {
    _isVip = isVip;
  }

  double tinhThanhTien() {
    return (isVip ? slmua * gia*0.9 : slmua * gia);
  }
}
