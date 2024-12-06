import 'package:app_travel/service/makanan_service.dart';
import 'package:app_travel/widgets/makanan_cart.dart';
import 'package:flutter/material.dart';

class Makananapi9 extends StatelessWidget {
  final MakananService _makananService = MakananService();
  Makananapi9({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'daftar maknaan',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blueAccent,
      ),
      body: FutureBuilder(
          future: _makananService.fetchMakanan(),
          builder: (context, snapshot) {
            if (snapshot.connectionState == ConnectionState.waiting) {
              return Center(
                child: CircularProgressIndicator(),
              );
            } else if (snapshot.hasError) {
              return Center(
                child: Text("error : ${snapshot.error}"),
              );
            } else {
              final daftarSeaFood = snapshot.data!;
              return ListView.builder(
                itemCount: daftarSeaFood.length,
                itemBuilder: (context, index) {
                  return MakananCart(
                    makananmodel: daftarSeaFood[index],
                  );
                },
              );
            }
          }),
    );
  }
}
