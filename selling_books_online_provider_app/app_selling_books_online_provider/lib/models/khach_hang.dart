class KhachHang {
  String? _tenKH;
  int? _slmua;
  bool? _isVip;
  static final double GIA = 20000;
  KhachHang(this._tenKH, this._slmua, this._isVip);

  String get tenKH => _tenKH!;
  int get slmua => _slmua!;
  bool get isVip => _isVip!;
  void set tenKH(String tenKH) {
    this._tenKH = tenKH;
  }

  void set slmua(int slmua) {
    this._slmua = slmua;
  }

  void set isVip(bool isVip) {
    this._isVip = isVip;
  }

  double tinhThanhTien() {
    return (isVip ? slmua * GIA*0.9 : slmua * GIA);
  }
}
