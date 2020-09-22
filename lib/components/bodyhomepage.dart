import 'package:flutter/material.dart';
import 'package:sosol_md/sizelib.dart';

class BodyHome extends StatelessWidget {
  List<String> category = ["Stock", "Monthly", "Cash", "Debit"];

  @override
  Widget build(BuildContext context) {
    return Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Image.asset(
                "assets/images/DSC_1003.jpg",
                height: getProportionateScreenHeight(315),
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height -
                getProportionateScreenHeight(315),
            color: Colors.red,
            child: GridView.builder(
                itemCount: category.length,
                padding: EdgeInsets.all(0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                      color: Colors.blue,
                      child: Center(child: Text(category[index])));
                }),
          ),
        ]);
  }
}
