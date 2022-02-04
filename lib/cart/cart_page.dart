import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:paylater_startup/cart/cart_footer.dart';
import 'package:paylater_startup/cart/cart_template.dart';
import 'package:paylater_startup/util/colors.dart';

class cartPage extends StatelessWidget{
  const cartPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _width = MediaQuery.of(context).size.width;
    double _height = MediaQuery.of(context).size.height;

    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 2,
        backgroundColor: scaffoldColor,
        title: const Text("Cart", style: TextStyle(color: kTextColor)),
      ),
      body: SizedBox(
        width: _width,
        height: _height,
        child: ListView(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 5),
              child: ListView.builder(
                  shrinkWrap: true,
                  physics: const ScrollPhysics(),
                  scrollDirection: Axis.vertical,
                  itemCount: 4,
                  itemBuilder: (context, index) {
                    return cart_template();
                  }
              ),
            ),
            const Align(
              alignment: Alignment.bottomCenter,
              child: CartFooter(),
            ),
          ],
        ),
      ),
    );
  }

}