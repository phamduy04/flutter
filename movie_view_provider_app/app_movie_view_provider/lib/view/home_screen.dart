import 'package:app_movie_view_provider/view/movie_list_screen.dart';
import 'package:app_movie_view_provider/view/movie_screeen.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        centerTitle: true,
        flexibleSpace: Container(
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  colors: [Colors.blue, Colors.green, Colors.purple],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight)),
        ),
        title: const Text(
          'App Movie View',
          style: TextStyle(
              fontSize: 24, color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
      body: SingleChildScrollView(
          child: Column(children: [
        Stack(
          children: [
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                height: 200,
                width: double.infinity,
                color: const Color(0xFF43A047),
              ),
            ),
            Center(
              child: Column(
                children: [
                  Container(
                    margin: const EdgeInsets.only(top: 100),
                    width: 90,
                    height: 90,
                    child: const CircleAvatar(
                      backgroundImage: AssetImage(
                        'assets/image/duy.png',
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
        Center(
            child: Column(children: [
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
          ElevatedButton(
              onPressed: () {
                print('you clicked');
                Get.to(MovieScreen());
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: Color(0xFF00897B),
                onSurface: Colors.grey,
                side: BorderSide(color: Colors.black, width: 1),
                elevation: 20,
                minimumSize: Size(180, 50),
                shadowColor: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              child: const Text(
                'Movie',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              )),
          const SizedBox(
            height: 15,
          ),
          ElevatedButton(
              onPressed: () {
                print('you clicked');
                Get.to(MovieListScren());
              },
              style: ElevatedButton.styleFrom(
                onPrimary: Colors.black,
                primary: const Color(0xFFFF6D00),
                onSurface: Colors.grey,
                side: const BorderSide(color: Colors.black, width: 1),
                elevation: 20,
                minimumSize: Size(180, 50),
                shadowColor: Colors.teal,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30)),
              ),
              child: const Text(
                ' List Movie',
                style: TextStyle(
                  fontSize: 24,
                  color: Colors.black,
                ),
              )),
        ]))
      ])),
    );
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
