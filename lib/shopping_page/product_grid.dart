import 'package:flutter/material.dart';
import 'package:paylater_startup/util/product_template2.dart';

class product_grid extends StatefulWidget {
  const product_grid({Key? key}) : super(key: key);

  @override
  _product_gridState createState() => _product_gridState();
}

class _product_gridState extends State<product_grid> {
  @override
  Widget build(BuildContext context) {

    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return SizedBox(
      width: _width,
      height: _height,
      child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisExtent: 270,
          ),
          itemBuilder: (context, index) {
            return Padding(
              padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
              child: productTemplate2(_width, _height),
            );
          }
      ),
    );
  }
}
