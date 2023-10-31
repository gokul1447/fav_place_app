import 'package:flutter/material.dart';
import 'package:place_save/models/place.dart';
import 'package:place_save/screens/place_list.dart';

class Places extends StatelessWidget{
  final List<Place> places;
 const Places({Key? key,required this.places}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    if(places.isEmpty){
      return  Center(child: Text('No places saved yet',
      style: Theme.of(context).textTheme.titleLarge!.copyWith(
        color: Theme.of(context).colorScheme.onBackground,
      )
      ));

    }
    
    return ListView.builder(itemCount: places.length,itemBuilder:(context, index) => 
    ListTile(
      title: Text(places[index].title, style: Theme.of(context).textTheme.titleMedium!.copyWith(
        color: Theme.of(context).colorScheme.onBackground,
      ),),
    ), ) ;
    
  }
}