import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_application_food/utils/api.dart';



class Category extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _CategoryListState();
  }
}

class _CategoryListState extends State<Category> {
  var _categories = [];

  @override
  void initState() {
    super.initState();
    _loadCategories();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meals List')),
      body: Column(children: [
        Expanded(
            child: ListView.builder(
          itemBuilder: _buildMealItem,
          itemCount: _categories.length,
        ))
      ]),
      
    );
  }

  Widget _buildMealItem(BuildContext context, int index) {
    return Card(
      child: ListTile(
        title: Text(_categories[index]['name'],
            style: TextStyle(color: Colors.black54)),
     
      ),
    );
  }

  _loadCategories() async {
    var response = await Network().getData('/categorylist');
    if (response.statusCode == 200) {
      setState(() {
        _categories= json.decode(response.body);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error ' + response.statusCode),
      ));
    }
  }
}