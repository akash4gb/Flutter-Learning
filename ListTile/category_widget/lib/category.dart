import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

final _rowHeight = 100.00;
final _borderRadius = BorderRadius.circular(_rowHeight / 2);

class Category extends StatelessWidget {
  const Category({
    Key key,
    @required this.name,
    @required this.color,
    @required this.iconLocation,
  })  : assert(name != null),
        assert(color != null),
        assert(iconLocation != null),
        super(key: key);

  final String name;
  final IconData iconLocation;
  final ColorSwatch color;

  @override
  Widget build(BuildContext context) {
    return Container(
      height:_rowHeight,
      child: InkWell(
        borderRadius: _borderRadius,
        highlightColor: color,
        splashColor: color,
        onTap: () {
          print("Item Tapped!");
        },
        child: Padding(
          padding: EdgeInsets.all(8.00),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Icon(
                  iconLocation,
                  size: 60.0,
                ),
              ),
              Center(
                  child: Text(
                name,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline,
              ))
            ],
          ),
        ),
      ),
    );
  }
}
