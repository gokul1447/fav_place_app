import 'package:flutter/material.dart';
import 'package:place_save/screens/place_add.dart';
import 'package:place_save/widgets/places_list.dart';

class PlaceList extends StatelessWidget{
 const PlaceList({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Your Places'),
        actions: [IconButton(onPressed: () {
          Navigator.of(context).push(MaterialPageRoute(builder: (context) => AddPlaceScreen(),));
        }, icon:const Icon(Icons.add))],
      ),
      body: Places(places: []) ,
    );
  }

}