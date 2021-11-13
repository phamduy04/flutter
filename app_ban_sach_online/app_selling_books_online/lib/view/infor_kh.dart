import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InForKH extends StatefulWidget {
  const InForKH({Key? key}) : super(key: key);

  @override
  _InForKHState createState() => _InForKHState();
}

class _InForKHState extends State<InForKH> {
  final Future<SharedPreferences> _prefs = SharedPreferences.getInstance();
  Future<String>? information;
  @override
  void initState() {
    
    super.initState();
    getInformation();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: const Text('information'),
        ),
        body: Container(
          width: size.width,
          height: size.height,
          margin: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: FutureBuilder<String>(
              future: information,
              builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.hasError) {
                  return const Center(child: Text('Data hot error'));
                }
                if (!snapshot.hasData) {
                  return const Center(child: CircularProgressIndicator());
                }
                String infonmationText = snapshot.data;
                return Card(
                  child: Text(infonmationText),
                );
              }),
        ));
  }

  getInformation() async {
    information = _prefs.then((pref) {
      return pref.getString("information") ?? "Not defined";
    });
  }
}
