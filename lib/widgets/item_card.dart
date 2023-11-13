import 'package:flutter/material.dart';
import 'package:pencarian_candi/models/candi.dart';

class ItemCard extends StatelessWidget {
  // TODO: 1. Deklarasi variabel yang dibutuhkan dan pasang pada konstruktor
  final Candi candi;

  const ItemCard({super.key,required this.candi});

  @override
  Widget build(BuildContext context) {
    return Card(
      // TODO: 2. Tetapkan Parameter shape,margin, dan elevation
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(15),
      ),
      margin: const EdgeInsets.all(4),
      elevation: 1,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          //TODO: 3. Buat image sebagai anak dari kolom
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15),
              child: Image.asset(
                candi.imageAsset,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
          ),
          //TODO: 4. Buat Text sebagai anak dari Column
          Padding(
            padding: const EdgeInsets.only(left: 16.0,top: 8.0),
            child: Text(
              candi.name,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          //TODO: 5. Buat Text sebagai anak dari Column
          Padding(
            padding: const EdgeInsets.only(left: 16.0, bottom: 8.0),
            child: Text(
              candi.type,
              style: const TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
