import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:plant_shop_ui/models/plant_model.dart';

class ScreeenPlant extends StatefulWidget {
  const ScreeenPlant({Key? key, required this.plant}) : super(key: key);
  final Plant plant;
  @override
  _ScreeenPlantState createState() => _ScreeenPlantState();
}

class _ScreeenPlantState extends State<ScreeenPlant> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.light,
      child: SingleChildScrollView(
        child: Column(
          children: [
            Stack(
              children: [
                Container(
                  height: 500,
                  color: Colors.green,
                  padding: EdgeInsets.only(top: 60, left: 30, right: 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            onPressed: () {
                              Navigator.pop(context);
                            },
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 30,
                            ),
                          ),
                          Icon(
                            Icons.shopping_cart_outlined,
                            color: Colors.white,
                            size: 30,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        widget.plant.category.toLowerCase(),
                        style: TextStyle(color: Colors.white, fontSize: 20),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        widget.plant.name,
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(
                        height: 25,
                      ),
                      Text(
                        'From',
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        '\$${widget.plant.price.toString()}',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Size',
                        style: TextStyle(color: Colors.white, fontSize: 24),
                      ),
                      Text(
                        widget.plant.size.toString(),
                        style: TextStyle(color: Colors.white, fontSize: 30),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      RawMaterialButton(
                        padding: EdgeInsets.all(15.0),
                        shape: CircleBorder(),
                        elevation: 2.0,
                        fillColor: Colors.black,
                        child: Icon(
                          Icons.shopping_cart,
                          color: Colors.white,
                          size: 30.0,
                        ),
                        onPressed: () => print('Add to cart'),
                      ),
                    ],
                  ),
                ),
                Positioned(
                  right: 20,
                  bottom: 30,
                  child: Hero(
                      tag: widget.plant.imageUrl,
                      child: Image.asset(
                        widget.plant.imageUrl,
                        height: 280,
                        width: 280,
                        fit: BoxFit.cover,
                      )),
                )
              ],
            ),
            Container(
              height: 400,
              padding: EdgeInsets.symmetric(horizontal: 40, vertical: 30),
              transform: Matrix4.translationValues(0.0, -20.0, 0.0),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
                color: Colors.white,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'All to know...',
                    style: TextStyle(color: Colors.black, fontSize: 30),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Text(
                    widget.plant.description,
                    style: TextStyle(color: Colors.black38, fontSize: 20),
                  ),
                  Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 30.0,
                      vertical: 40.0,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          'Details',
                          style: TextStyle(
                            fontSize: 24.0,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(height: 10.0),
                        Text(
                          'Plant height: 35-45cm',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black87,
                          ),
                        ),
                        Text(
                          'Nursery pot width: 12cm',
                          style: TextStyle(
                            fontSize: 16.0,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    ));
  }
}
