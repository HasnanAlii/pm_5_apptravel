import 'package:app_travel/models/makanan_model.dart';
import 'package:flutter/material.dart';

class MakananCart extends StatelessWidget {
final MakananModel makananmodel;

  const MakananCart({super.key, required this.makananmodel});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
      elevation: 20,
      child: Padding(
      padding: const EdgeInsets.all(5),
      child: ListTile(
        leading:Image.network(
        makananmodel.strMealThumb,
        height: 50,
        fit: BoxFit.cover,
        ),
      title: Text(makananmodel.strMeal,
      style: const TextStyle(fontWeight: FontWeight.bold),),
      
      ),
      ),
    );
  }
}