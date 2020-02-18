import 'package:category_route/category.dart';
import 'package:flutter/material.dart';

final _backgroudColor = Colors.green[100];

class CategoryRoute extends StatelessWidget {
  const CategoryRoute({Key key}) : super(key: key);
  static const _categoryNames = <String>[
    'Length',
    'Area',
    'Volume',
    'Mass',
    'Time',
    'Digital Storage',
    'Currency',
  ];

  static const _baseColors = <Color>[
    Colors.teal,
    Colors.orange,
    Colors.pinkAccent,
    Colors.blueAccent,
    Colors.yellow,
    Colors.greenAccent,
    Colors.purpleAccent,
    Colors.red,
  ];

  Widget _buildCategoryWidgets(List<Widget> categories) {
    return ListView.builder(
        itemCount: categories.length,
        itemBuilder: (BuildContext context, int index) {
          return categories[index];
        });
  }

  @override
  Widget build(BuildContext context) {
    final categories = <Category>[];

    for (var i = 0; i < _categoryNames.length; i++) {
      categories.add(Category(
          name: _categoryNames[i],
          color: _baseColors[i],
          iconLocation: Icons.cake));
    }

    final listView = Container(
      color: _backgroudColor,
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      child: _buildCategoryWidgets(categories),
    );

    final appBar = AppBar(
      elevation: 4.0,
      title: Text(
        'Unit Converter',
        style: TextStyle(color: Colors.black, fontSize: 30.0),
      ),
      centerTitle: true,
      backgroundColor: _backgroudColor,
    );

    return Scaffold(
      appBar: appBar,
      body: listView,
    );
  }
}
