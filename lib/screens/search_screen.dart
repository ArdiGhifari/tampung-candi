import 'package:flutter/material.dart';
import 'package:pencarian_candi/models/candi.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  // TODO: 1. Deklarasikan Variabel yang dibutuhkan
  final List<Candi> _filteredCandis = [];
  final String _searchQuery = '';
  final TextEditingController _searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // TODO : 2. Buat appbar dengan judul Pencarian Candi
      appBar: AppBar(
        title: const Text('Pencarian Candi'),
      ),
      // TODO : 3. Buat body berupa Column
      body: Column(
        children: [
          // TODO : 4. Buat TextField pencarian sebagai anak dari Column
          Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: Colors.deepPurple[50],
              ),
              child: const TextField(
                autofocus: false,
                decoration: InputDecoration(
                    hintText: 'Cari candi ...',
                    prefixIcon: Icon(Icons.search),
                    border: InputBorder.none,
                    focusedBorder: OutlineInputBorder(
                        borderSide: BorderSide(color: Colors.deepPurple)),
                    contentPadding:
                        EdgeInsets.symmetric(horizontal: 16, vertical: 12)),
              ),
            ),
          ),
          // TODO : 5. Buat ListView hasil pencarian sebagai anak dari Column
          Expanded(
            child: ListView.builder(
                itemCount: _filteredCandis.length,
                itemBuilder: (context, index) {
                  final Candi = _filteredCandis[index];
                  return Card(
                    margin:
                        const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding: const EdgeInsets.all(8),
                          width: 100,
                          height: 100,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: Image.asset(
                              Candi.imageAsset,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                Candi.name,
                                style: const TextStyle(
                                    fontSize: 16, fontWeight: FontWeight.bold),
                              ),
                              const SizedBox(
                                height: 4,
                              ),
                              Text(Candi.location),
                            ],
                          ),
                        )
                      ],
                    ),
                  );
                }),
          ),
          const SizedBox(
            height: 16,
          )
        ],
      ),
    );
  }
}
