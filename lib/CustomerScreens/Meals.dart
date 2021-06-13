import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_application_food/utils/api.dart';



class MealsListView extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MealsListState();
  }
}

class _MealsListState extends State<MealsListView> {
  var _meals = [];

  @override
  void initState() {
    super.initState();
    _loadMeals();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Meals List')),
      body: Column(children: [
        Expanded(
            child: ListView.builder(
          itemBuilder: _buildMealItem,
          itemCount: _meals.length,
        ))
      ]),
      
    );
  }

  Widget _buildMealItem(BuildContext context, int index) {
    return Card(
      child: ListTile(
        leading: Image.network(Network().getMealImageUrl(_meals[index]['Id'])),
        title: Text(_meals[index]['name'],
            style: TextStyle(color: Colors.black54)),
        subtitle: Text(_meals[index]['Price'].toString(),
            style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
      ),
    );
  }

  _loadMeals() async {
    var response = await Network().getData('/meals');
    if (response.statusCode == 200) {
      setState(() {
        _meals = json.decode(response.body);
      });
    } else {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Error ' + response.statusCode),
      ));
    }
  }
}