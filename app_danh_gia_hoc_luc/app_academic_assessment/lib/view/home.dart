import 'dart:typed_data';

import 'package:flutter/material.dart';
import 'package:rflutter_alert/rflutter_alert.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController? diemToanController;
  TextEditingController? diemVanController;
  TextEditingController? diemAnhController;

  String diemTB = 'chưa xác định';
  String hocLuc = 'chưa xác định';
  @override
  void initState() {
    super.initState();
    diemToanController = TextEditingController();
    diemVanController = TextEditingController();
    diemAnhController = TextEditingController();
  }

  @override
  void dispose() {
    super.dispose();
    diemToanController!.dispose();
    diemVanController!.dispose();
    diemAnhController!.dispose();
  }

  String loaiHocLuc(String diemTB) {
    double diem = double.parse(diemTB);
    if (diem < 5)
      return " yếu";
    else if (diem < 6.5)
      return " trung bình";
    else if (diem < 8.5)
      return " khá";
    else
      return " giỏi";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          centerTitle: true,
          flexibleSpace: Container(
            decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [Colors.blue, Colors.green, Colors.purple],
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight)),
          ),
          title: Text(
            'Đánh giá học tập',
            style: TextStyle(
                fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  ClipPath(
                    clipper: MyClipper(),
                    child: Container(
                      height: 200,
                      width: double.infinity,
                      color: Color(0xFF43A047),
                    ),
                  ),
                  Center(
                    child: Column(
                      children: [
                        Container(
                          margin: EdgeInsets.only(top: 100),
                          width: 90,
                          height: 90,
                          child: CircleAvatar(
                            backgroundImage: AssetImage(
                              'assets/duy.png',
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 15,
                    ),
                    Text('Phạm Văn Duy',
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.black,
                            fontWeight: FontWeight.bold)),
                    const SizedBox(
                      height: 15,
                    ),
                    textInput(
                        hintText: 'nhập điểm toán',
                        labelText: 'điểm toán',
                        controller: diemToanController),
                    const SizedBox(
                      height: 15,
                    ),
                    textInput(
                        hintText: 'nhập điểm văn',
                        labelText: 'điểm văn',
                        controller: diemVanController),
                    const SizedBox(
                      height: 15,
                    ),
                    textInput(
                        hintText: 'nhập điểm anh',
                        labelText: 'điểm anh',
                        controller: diemAnhController),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                        onPressed: () {
                          setState(() {
                            if (diemToanController!.text.isEmpty ||
                                diemVanController!.text.isEmpty ||
                                diemAnhController!.text.isEmpty) {
                              diemToanController!.clear();
                              diemVanController!.clear();
                              diemAnhController!.clear();
                              Alert(
                                context: context,
                                type: AlertType.error,
                                title: "THÔNG BÁO",
                                desc:
                                    "Bạn nhập thiếu thông tin. vui lòng nhập lại",
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "OK",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    width: 120,
                                  )
                                ],
                              ).show();
                            } 
                            else {
                              // tính điểm trung bình//
                              double diemToan =
                                  double.parse(diemToanController!.text);
                              double diemVan =
                                  double.parse(diemVanController!.text);
                              double diemAnh =
                                  double.parse(diemAnhController!.text);
                              var diem = ((diemVan + diemVan + diemAnh) / 3)
                                  .toStringAsFixed(2);

                              diemTB = diem.toString();
                              hocLuc = loaiHocLuc(diemTB);
                              Alert(
                                context: context,
                                type: AlertType.success,
                                title: "THÔNG BÁO",
                                desc: "Điểm TB: $diemTB \n Học lực: $hocLuc ",
                                buttons: [
                                  DialogButton(
                                    child: Text(
                                      "OK",
                                      style: TextStyle(
                                          color: Colors.white, fontSize: 20),
                                    ),
                                    onPressed: () => Navigator.pop(context),
                                    width: 120,
                                  )
                                ],
                              ).show();
                            }
                          });
                        },
                        style: ElevatedButton.styleFrom(
                            shape: new RoundedRectangleBorder(
                          borderRadius: new BorderRadius.circular(30.0),
                        )),
                        child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10, vertical: 10),
                          child: Text('Đánh giá',
                              style: TextStyle(
                                  fontSize: 22,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold)),
                        ))
                  ],
                ),
              )
            ],
          ),
        ));
  }

  Widget textInput(
      {required String hintText,
      required String labelText,
      required controller}) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25),
        child: TextField(
          controller: controller,
          decoration: InputDecoration(
              hintText: hintText,
              labelText: labelText,
              border:
                  OutlineInputBorder(borderRadius: BorderRadius.circular(10))),
        ));
  }
}

class MyClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height - 100);
    path.quadraticBezierTo(
        size.width / 2, size.height, size.width, size.height - 100);
    path.lineTo(size.width, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
