import 'dart:io';

import 'package:app_selling_books_online_provider/models/ds_khach_hang.dart';
import 'package:app_selling_books_online_provider/models/khach_hang.dart';
import 'package:app_selling_books_online_provider/provider/khach_hang_list_provider.dart';
import 'package:app_selling_books_online_provider/view/statistical_screen.dart';
import 'package:app_selling_books_online_provider/widget/infor.dart';
import 'package:app_selling_books_online_provider/widget/input_text.dart';
import 'package:app_selling_books_online_provider/widget/text_thong_ke.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rflutter_alert/rflutter_alert.dart';
import 'package:provider/provider.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController? nameController;
  TextEditingController? amountController;
  bool check = true;
  int tien = 0;
  bool discount = true;
  String tongKH = '';
  String tongKHVip = '';
  String tongDoanhThu = '';
  DanhSachKH dsKH = new DanhSachKH();
  @override
  void initState() {
    super.initState();
    nameController = TextEditingController();
    amountController = TextEditingController();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController!.dispose();
    amountController!.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    Future<void> _showMyDialog() async {
      return showDialog<void>(
        context: context,
        barrierDismissible: false, // user must tap button!
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Thông báo'),
            content: SingleChildScrollView(
              child: ListBody(
                children: const <Widget>[
                  Text(
                    'Bạn có chắc muốn thoát hay không',
                    style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ),
            actions: <Widget>[
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  TextButton(
                    child: const Text(
                      'Có',
                      style: TextStyle(fontSize: 20),
                    ),
                    onPressed: () {
                      exit(0);
                    },
                  ),
                  const SizedBox(
                    width: 15,
                  ),
                  TextButton(
                    child: const Text('không', style: TextStyle(fontSize: 20)),
                    onPressed: () {
                      Get.back();
                    },
                  ),
                ],
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.green,
          elevation: 0,
          title: const Text(
            'Chương trình bán sách online',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          )),
      body: SingleChildScrollView(
        child: Container(
          width: size.width,
          height: size.height,
          child: Column(
            children: [
              const Infor(content: 'Thông tin hóa đơn'),
              InputText(text: 'Tên khách hàng:', controller: nameController),
              InputText(text: 'Số lượng  sách:', controller: amountController),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Checkbox(
                      value: check,
                      checkColor: Colors.white,
                      activeColor: Colors.red,
                      onChanged: (bool? value) {
                        setState(() {
                          this.check = value!;
                          if (value == true) {
                            discount = true;
                          } else {
                            discount = false;
                          }
                        });
                      },
                    ),
                    const Text(
                      'Khách hàng VIP',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.all(10),
                child: Row(
                  children: [
                    const Expanded(
                        child: Text(
                      'Thành tiền:',
                      style: TextStyle(
                          fontSize: 20,
                          color: Colors.black,
                          fontWeight: FontWeight.w300),
                    )),
                    Expanded(
                        child: Container(
                      height: 30,
                      padding: const EdgeInsets.symmetric(
                          horizontal: 10, vertical: 5),
                      color: Color(0xFF78909C),
                      child: Text(
                        tien.toString(),
                        textAlign: TextAlign.center,
                        style:
                            const TextStyle(fontSize: 20, color: Colors.white),
                      ),
                    ))
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.symmetric(horizontal: 2, vertical: 5),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    buttonTinhTT(
                      name: 'Tính TT',
                    ),
                    buttonTiep(name: 'Tiếp'),
                    buttonThongke(name: 'Thống kê'),
                  ],
                ),
              ),
              const Infor(content: 'Thông tin thống kê'),
              TextThongke(name: 'Tổng số KH:', text: tongKH),
              TextThongke(name: 'Tổng số KH VIP:', text: tongKHVip),
              TextThongke(name: 'Tổng doang thu:', text: tongDoanhThu),
              Container(
                color: Colors.green,
                height: 40,
                width: size.width,
              ),
              const SizedBox(
                height: 15,
              ),
              ElevatedButton.icon(
                  onPressed: () {
                    nameController!.clear();
                    amountController!.clear();
                    Get.to(StatisticalScreen());
                    context
                        .read<KhListProvider>()
                        .updateKhListProvider(danhSachKH: dsKH);
                  },
                  style: ElevatedButton.styleFrom(
                    onPrimary: Colors.black,
                    primary: const Color(0xFF66BB6A),
                    onSurface: Colors.grey,
                    side: const BorderSide(color: Colors.black, width: 1),
                    elevation: 20,
                    minimumSize: Size(180, 50),
                    shadowColor: Colors.teal,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(30)),
                  ),
                  icon: const Icon(
                    Icons.stacked_bar_chart,
                    color: Colors.black,
                  ),
                  label: const Text(
                    'thông kê',
                    style: TextStyle(fontSize: 20),
                  )),
              Container(
                margin: EdgeInsets.only(right: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    IconButton(
                        onPressed: () {
                          _showMyDialog();
                        },
                        icon: const Icon(
                          Icons.arrow_forward,
                          size: 30,
                          color: Colors.black,
                        ))
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  // button Tinh TT//
  Widget buttonTinhTT({required String name}) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            if (nameController!.text.isEmpty ||
                amountController!.text.isEmpty) {
              showAlertInfor(
                  textDesc: 'Bạn chưa nhập đủ thông tin. Mời bạn nhập lại',
                  alertType: AlertType.error);
            } else {
              String tenKH = nameController!.text;
              int slmua = int.parse(amountController!.text);
              bool isVip = discount;
              KhachHang kh = new KhachHang(tenKH, slmua, isVip);
              tien = kh.tinhThanhTien().toInt();
              dsKH.addKhachHang(kh);
            }
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(name,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ));
  }

  // button Tiep //
  Widget buttonTiep({required String name}) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            if (nameController!.text.isEmpty ||
                amountController!.text.isEmpty) {
              showAlertInfor(
                  textDesc:
                      "Chưa có  thông tin khách hàng. Mời bạn nhập thông tin",
                  alertType: AlertType.error);
            } else {
              nameController!.clear();
              amountController!.clear();
              tien = 0;
              tongKH = dsKH.tongKhachHang().toString();
              tongKHVip = dsKH.tongKhachHangVip().toString();
              tongDoanhThu = dsKH.tongDoanhThu().toString();
            }
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(name,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ));
  }

  // button thong ke //
  Widget buttonThongke({required String name}) {
    return ElevatedButton(
        onPressed: () {
          setState(() {
            showAlertInfor(
                textDesc: "Tổng doanh thu là: $tongDoanhThu",
                alertType: AlertType.success);
          });
        },
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Colors.blueGrey),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
          child: Text(name,
              style: const TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  fontWeight: FontWeight.bold)),
        ));
  }

  showAlertInfor({required String textDesc, required AlertType alertType}) {
    return Alert(
      context: context,
      type: alertType,
      title: "Thông báo",
      desc: textDesc,
      buttons: [
        DialogButton(
          child: Text(
            "OK",
            style: TextStyle(color: Colors.white, fontSize: 20),
          ),
          onPressed: () => Navigator.pop(context),
          width: 120,
        )
      ],
    ).show();
  }
}
