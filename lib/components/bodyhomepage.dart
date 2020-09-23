import 'package:flutter/material.dart';
import 'package:sosol_md/sizelib.dart';

class BodyHome extends StatelessWidget {
  Map<String, dynamic> menu = {
    "Stock": {"a": 123, "b": "abc"},
    "Monthly": {"a": 321, "b": "abc"},
    "Cash": {"a": 345, "b": "abc"},
    "Debit": {"a": 15523, "b": "abc"},
  };

  @override
  Widget build(BuildContext context) {
    List<String> keys = menu.keys.toList();
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
            child: GridView.builder(
                itemCount: menu.length,
                padding: EdgeInsets.all(0),
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2),
                itemBuilder: (BuildContext context, int index) {
                  String menuTitle = keys[index].toString();
                  Map<dynamic, dynamic> menuData = menu[keys[index]];
                  String dataA = menuData["a"].toString();
                  String dataB = menuData["b"].toString();
                  return Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: MenuCard(
                          menu: menu,
                          menuTitle: menuTitle,
                          dataA: dataA,
                          dataB: dataB));
                }),
          ),
        ]);
  }
}

class MenuCard extends StatelessWidget {
  const MenuCard({
    Key key,
    @required this.menu,
    @required this.menuTitle,
    @required this.dataA,
    @required this.dataB,
  }) : super(key: key);

  final Map<String, dynamic> menu;
  final String menuTitle;
  final String dataA;
  final String dataB;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: InkWell(
        onTap: () {
          print(menu.values);
        },
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              MenuText(
                  menuText: menuTitle,
                  menuStyle:
                      TextStyle(fontWeight: FontWeight.bold, fontSize: 20)),
              MenuText(menuText: dataA),
              MenuText(menuText: dataB),
              // ListView.builder(itemBuilder: null),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuText extends StatelessWidget {
  const MenuText({Key key, @required this.menuText, this.menuStyle})
      : super(key: key);

  final String menuText;
  final TextStyle menuStyle;

  @override
  Widget build(BuildContext context) {
    return Text(
      menuText,
      textAlign: TextAlign.center,
      style: menuStyle,
    );
  }
}
