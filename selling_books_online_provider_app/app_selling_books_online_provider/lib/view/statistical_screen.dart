import 'package:app_selling_books_online_provider/models/ds_khach_hang.dart';
import 'package:app_selling_books_online_provider/provider/khach_hang_list_provider.dart';
import 'package:app_selling_books_online_provider/widget/infor.dart';
import 'package:app_selling_books_online_provider/widget/item_kh.dart';
import 'package:app_selling_books_online_provider/widget/text_thong_ke.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class StatisticalScreen extends StatefulWidget {
  const StatisticalScreen({Key? key}) : super(key: key);

  @override
  _StatisticalScreenState createState() => _StatisticalScreenState();
}

class _StatisticalScreenState extends State<StatisticalScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.green,
        leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(
              Icons.arrow_back,
              size: 30,
              color: Colors.black,
            )),
        title: const Text(
          'Thống kê',
          style: TextStyle(
            fontSize: 24,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        actions: [
          Container(
              margin: EdgeInsets.only(right: 20),
              child: const Icon(
                Icons.stacked_bar_chart,
                color: Colors.black,
                size: 30,
              ))
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Consumer<KhListProvider>(
          builder: (context, khListProvider, child) {
            DanhSachKH danhSachKH = khListProvider.danhSachKH;
            return Container(
              child: Column(
                children: [
                  const Infor(content: 'Thông tin thống kê'),
                  TextThongke(
                      name: 'Tổng số KH:',
                      text: danhSachKH.tongKhachHang().toString()),
                  TextThongke(
                      name: 'Tổng số KH VIP:',
                      text: danhSachKH.tongKhachHangVip().toString()),
                  TextThongke(
                      name: 'Tổng doang thu:',
                      text: danhSachKH.tongDoanhThu().toStringAsFixed(2)),
                  const Infor(content: 'Danh sách khách hàng'),
                  Container(
                    child: Column(
                      children: [
                        ListView.builder(
                            shrinkWrap: true,
                            itemCount: danhSachKH.listKH.length,
                            itemBuilder: (contex, index) {
                              return Card(
                                  color: danhSachKH.listKH[index].isVip
                                      ? Colors.blueAccent
                                      : Colors.orangeAccent,
                                  child: ItemKH(
                                      tenKH: danhSachKH.listKH[index].tenKH,
                                      khVip: danhSachKH.listKH[index].isVip
                                          ? 'Kh Vip'
                                          : '',
                                      color: danhSachKH.listKH[index].isVip
                                             ? Colors.red
                                             : Colors.black,                                           
                                          ));
                            }),
                      ],
                    ),
                  )
                ],
              ),
            );
          },
        ),
      ),
    );
  }
}

