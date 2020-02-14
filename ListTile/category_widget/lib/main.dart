import 'package:category_widget/category.dart';
import 'package:flutter/material.dart';

void main()=>runApp(UnitConverterApp());


class UnitConverterApp extends StatelessWidget {
  
  static const _categoryName='Cake';
  static const _categoryColor = Colors.green;
  static const _categoryIcon = Icons.cake;
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
      title: '02. Custom Category widget',
      home: Scaffold(
        backgroundColor: Colors.green[100],
        body: Center(
          child: Category(
            name: _categoryName,
            color: _categoryColor,
            iconLocation: _categoryIcon,
          ),
        ),
      ),
    );
  }

}

