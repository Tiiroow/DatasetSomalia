// import 'package:flutter/material.dart';

// class DatasetListScreen extends StatelessWidget {
//   static const Color primaryBlue = Color(0xFF144BA6);

//   final List<Map<String, String>> datasets = List.generate(4, (index) {
//     return {
//       'title': 'Sample Dataset ${index + 1}',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     };
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('All Datasets'),
//         centerTitle: true,
//         backgroundColor: Colors.white,
//         foregroundColor: Colors.black,
//         elevation: 0,
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           children: [
//             _buildSearchField(),
//             const SizedBox(height: 12),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: datasets.length,
//                 itemBuilder: (context, index) {
//                   final data = datasets[index];
//                   return _buildDatasetCard(data);
//                 },
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }

//   Widget _buildSearchField() {
//     return TextField(
//       decoration: InputDecoration(
//         hintText: 'Search datasets...',
//         prefixIcon: const Icon(Icons.search),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12),
//         ),
//         filled: true,
//         fillColor: Colors.grey[100],
//       ),
//     );
//   }

//   Widget _buildDatasetCard(Map<String, String> data) {
//     return Container(
//       margin: const EdgeInsets.symmetric(vertical: 8),
//       padding: const EdgeInsets.all(16),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey.shade300),
//         borderRadius: BorderRadius.circular(16),
//         color: Colors.white,
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           Text(data['title']!,
//               style:
//                   const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
//           const SizedBox(height: 4),
//           Text(data['description']!,
//               style: TextStyle(color: Colors.grey[700], fontSize: 13)),
//           const SizedBox(height: 12),
//           Row(
//             children: [
//               _pill(data['type']!),
//               const SizedBox(width: 8),
//               _pill(data['size']!),
//               const Spacer(),
//               ElevatedButton(
//                 onPressed: () {},
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: primaryBlue,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(30),
//                   ),
//                   padding:
//                       const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
//                 ),
//                 child: const Text("Download"),
//               ),
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   Widget _pill(String label) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Text(label, style: const TextStyle(fontSize: 12)),
//     );
//   }
// }

import 'package:flutter/material.dart';

class DatasetListScreen extends StatelessWidget {
  static const Color primaryBlue = Color(0xFF144BA6);

  final List<Map<String, String>> datasets = List.generate(4, (index) {
    return {
      'title': 'Sample Dataset ${index + 1}',
      'description': 'Lorem ipsum dolor sit amet, con setriur aliqueti...',
      'type': 'word',
      'size': '50k samples'
    };
  });

  DatasetListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('All Datasets'),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              _buildSearchField(),
              const SizedBox(height: 12),
              Expanded(
                child: ListView.builder(
                  itemCount: datasets.length,
                  itemBuilder: (context, index) {
                    final data = datasets[index];
                    return _buildDatasetCard(data);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSearchField() {
    return TextField(
      decoration: InputDecoration(
        hintText: 'Search datasets...',
        prefixIcon: const Icon(Icons.search),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        filled: true,
        fillColor: Colors.grey[100],
      ),
    );
  }

  Widget _buildDatasetCard(Map<String, String> data) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(16),
        color: Colors.white,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            data['title']!,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
          ),
          const SizedBox(height: 4),
          Text(
            data['description']!,
            style: TextStyle(color: Colors.grey[700], fontSize: 13),
          ),
          const SizedBox(height: 12),
          Row(
            children: [
              _pill(data['type']!),
              const SizedBox(width: 8),
              _pill(data['size']!),
              const Spacer(),
              ElevatedButton(
                onPressed: () {
                  // TODO: Handle download logic
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: primaryBlue,
                  foregroundColor: Colors.white,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                ),
                child: const Text("Download"),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget _pill(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: const TextStyle(fontSize: 12)),
    );
  }
}
