// import 'package:flutter/material.dart';
// import 'profile_and_login_page.dart';
// import 'upload_dataset_screen.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   static const primaryBlue = Color(0xFF144BA6);

//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Somali Dataset Repository',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primaryColor: primaryBlue,
//         colorScheme: ColorScheme.fromSeed(seedColor: primaryBlue),
//         fontFamily: 'Arial',
//         useMaterial3: true,
//       ),
//       home: const HomeScreen(),
//       routes: {
//         '/dataset-list': (context) => const DatasetListScreen(),
//         '/upload-dataset': (context) => const UploadDatasetScreen(

//         ),
//         '/profile': (context) => ProfileAndLoginPage(
//               onTabChange: (int index) {
//                 // Handle tab change
//               },
//             ),
//       },
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   static const primaryBlue = Color(0xFF144BA6);
//   int _currentIndex = 0;

//   late final List<Widget> _pages;

//   @override
//   void initState() {
//     super.initState();
//     _pages = [
//       const MainContent(),
//       const DatasetListScreen(),
//       const UploadDatasetScreen(),
//       ProfileAndLoginPage(onTabChange: (int index) {
//         setState(() {
//           _currentIndex = index;
//         });
//       }),
//     ];
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: _pages[_currentIndex],
//       bottomNavigationBar: BottomNavigationBar(
//         currentIndex: _currentIndex,
//         onTap: (index) => setState(() => _currentIndex = index),
//         items: const [
//           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
//           BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Datasets'),
//           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Upload'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//         selectedItemColor: primaryBlue,
//         unselectedItemColor: Colors.grey,
//         showSelectedLabels: false,
//         showUnselectedLabels: false,
//       ),
//     );
//   }
// }

// // ---------------- HOME CONTENT ----------------
// class MainContent extends StatelessWidget {
//   static const primaryBlue = Color(0xFF144BA6);

//   const MainContent({super.key});

//   Widget _pill(String text) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//       decoration: BoxDecoration(
//         color: Colors.grey[200],
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Text(text, style: const TextStyle(fontSize: 12)),
//     );
//   }

//   Widget _datasetCard() {
//     return Container(
//       padding: const EdgeInsets.all(12),
//       decoration: BoxDecoration(
//         border: Border.all(color: Colors.grey),
//         borderRadius: BorderRadius.circular(12),
//       ),
//       child: Column(
//         crossAxisAlignment: CrossAxisAlignment.start,
//         children: [
//           const Text('Sample Dataset',
//               style: TextStyle(fontWeight: FontWeight.bold)),
//           const SizedBox(height: 4),
//           const Text(
//             'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
//             style: TextStyle(fontSize: 12),
//             maxLines: 2,
//             overflow: TextOverflow.ellipsis,
//           ),
//           const SizedBox(height: 8),
//           Row(
//             children: [
//               _pill('text'),
//               const SizedBox(width: 6),
//               _pill('50k samples'),
//             ],
//           )
//         ],
//       ),
//     );
//   }

//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Padding(
//         padding: const EdgeInsets.all(16),
//         child: ListView(
//           children: [
//             const Text(
//               'Somali Dataset Repository',
//               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
//             ),
//             const SizedBox(height: 16),
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Search datasets...',
//                 prefixIcon: const Icon(Icons.search),
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                 fillColor: Colors.grey[200],
//                 filled: true,
//               ),
//             ),
//             const SizedBox(height: 24),
//             const Text('FEATURED DATASETS',
//                 style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 12),
//             _datasetCard(),
//             const SizedBox(height: 24),
//             const Text('Recent Datasets',
//                 style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
//             const SizedBox(height: 12),
//             GridView.count(
//               crossAxisCount: 2,
//               childAspectRatio: 1.4,
//               crossAxisSpacing: 12,
//               mainAxisSpacing: 12,
//               shrinkWrap: true,
//               physics: const NeverScrollableScrollPhysics(),
//               children: List.generate(4, (_) => _datasetCard()),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ---------------- DATASET LIST ----------------
// class DatasetListScreen extends StatelessWidget {
//   const DatasetListScreen({super.key});
//   static const Color primaryBlue = Color.fromARGB(255, 246, 246, 247);

//   final List<Map<String, String>> datasets = const [
//     {
//       'title': 'Sample Dataset 1',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 2',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 3',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 4',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 1',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 2',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 3',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 4',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 1',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 2',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 3',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//     {
//       'title': 'Sample Dataset 4',
//       'description': 'Lorem ipsum dolor, amet, con setriur aliqueti...',
//       'type': 'word',
//       'size': '50k samples'
//     },
//   ];

//   Widget _pill(String label) {
//     return Container(
//       padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
//       decoration: BoxDecoration(
//         color: const Color.fromARGB(46, 52, 51, 58),
//         borderRadius: BorderRadius.circular(20),
//       ),
//       child: Text(label, style: const TextStyle(fontSize: 12)),
//     );
//   }

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
//             TextField(
//               decoration: InputDecoration(
//                 hintText: 'Search datasets...',
//                 prefixIcon: const Icon(Icons.search),
//                 border:
//                     OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
//                 filled: true,
//                 fillColor: const Color.fromARGB(255, 244, 243, 243),
//               ),
//             ),
//             const SizedBox(height: 12),
//             Expanded(
//               child: ListView.builder(
//                 itemCount: datasets.length,
//                 itemBuilder: (context, index) {
//                   final data = datasets[index];
//                   return Container(
//                     margin: const EdgeInsets.symmetric(vertical: 8),
//                     padding: const EdgeInsets.all(16),
//                     decoration: BoxDecoration(
//                       border: Border.all(
//                           color: const Color.fromARGB(255, 199, 199, 199)),
//                       borderRadius: BorderRadius.circular(16),
//                       color: const Color.fromARGB(255, 248, 245, 245),
//                     ),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(data['title']!,
//                             style: const TextStyle(
//                                 fontWeight: FontWeight.bold, fontSize: 16)),
//                         const SizedBox(height: 4),
//                         Text(data['description']!,
//                             style: TextStyle(
//                                 color: const Color.fromARGB(255, 15, 15, 15),
//                                 fontSize: 13)),
//                         const SizedBox(height: 12),
//                         Row(
//                           children: [
//                             _pill(data['type']!),
//                             const SizedBox(width: 8),
//                             _pill(data['size']!),
//                             const Spacer(),
//                             ElevatedButton(
//                               onPressed: () {},
//                               style: ElevatedButton.styleFrom(
//                                 backgroundColor:
//                                     const Color.fromARGB(255, 2, 48, 139),
//                                 shape: RoundedRectangleBorder(
//                                   borderRadius: BorderRadius.circular(10),
//                                 ),
//                               ),
//                               child: const Text(
//                                 "Download",
//                                 style: TextStyle(color: Colors.white),
//                               ),
//                             ),
//                           ],
//                         )
//                       ],
//                     ),
//                   );
//                 },
//               ),
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ---------------- UPLOAD SCREEN ----------------
// class UploadDatasetScreen extends StatelessWidget {
//   const UploadDatasetScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Scaffold(
//       body: Center(child: Text("Upload Dataset Screen")),
//     );
//   }
// }

// // ---------------- UPLOAD DATASET SCREEN ----------------

import 'package:flutter/material.dart';
import 'profile_and_login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  static const primaryBlue = Color(0xFF144BA6);

  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Somali Dataset Repository',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primaryColor: primaryBlue,
        colorScheme: ColorScheme.fromSeed(seedColor: primaryBlue),
        fontFamily: 'Arial',
        useMaterial3: true,
      ),
      home: const HomeScreen(),
    );
  }
}

// ---------------- MAIN NAVIGATION ----------------
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  static const primaryBlue = Color(0xFF144BA6);
  int _currentIndex = 0;

  late final List<Widget> _pages;

  @override
  void initState() {
    super.initState();
    _pages = [
      const MainContent(),
      const DatasetListScreen(),
      const UploadDatasetScreen(),
      ProfileAndLoginPage(
        onTabChange: (index) => setState(() => _currentIndex = index),
      ),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) => setState(() => _currentIndex = index),
        selectedItemColor: primaryBlue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Datasets'),
          BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Upload'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
      ),
    );
  }
}

// ---------------- HOME CONTENT ----------------
class MainContent extends StatelessWidget {
  static const primaryBlue = Color(0xFF144BA6);

  const MainContent({super.key});

  Widget _pill(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(text, style: const TextStyle(fontSize: 12)),
    );
  }

  Widget _datasetCard() {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Sample Dataset',
              style: TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          const Text(
            'Lorem ipsum dolor sit amet, consectetur adipiscing elit.',
            style: TextStyle(fontSize: 12),
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 8),
          Row(
            children: [
              _pill('text'),
              const SizedBox(width: 6),
              _pill('50k samples'),
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: ListView(
          children: [
            const Text(
              'Somali Dataset Repository',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            TextField(
              decoration: InputDecoration(
                hintText: 'Search datasets...',
                prefixIcon: const Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                fillColor: Colors.grey[200],
                filled: true,
              ),
            ),
            const SizedBox(height: 24),
            const Text('FEATURED DATASETS',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            _datasetCard(),
            const SizedBox(height: 24),
            const Text('Recent Datasets',
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            const SizedBox(height: 12),
            GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 1.4,
              crossAxisSpacing: 12,
              mainAxisSpacing: 12,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              children: List.generate(8, (_) => _datasetCard()),
            )
          ],
        ),
      ),
    );
  }
}

// ---------------- DATASET LIST SCREEN ----------------
class DatasetListScreen extends StatelessWidget {
  const DatasetListScreen({super.key});

  final List<Map<String, String>> datasets = const [
    {
      'title': 'Sample Dataset 1',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 2',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 3',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 4',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 5',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 6',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 7',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 8',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 9',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 10',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 11',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
    {
      'title': 'Sample Dataset 12',
      'description': 'Lorem ipsum dolor sit amet...',
      'type': 'word',
      'size': '50k samples',
    },
  ];

  Widget _pill(String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 6),
      decoration: BoxDecoration(
        color: const Color.fromARGB(46, 52, 51, 58),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text(label, style: const TextStyle(fontSize: 12)),
    );
  }

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
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: InputDecoration(
                hintText: 'Search datasets...',
                prefixIcon: const Icon(Icons.search),
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(12)),
                filled: true,
                fillColor: const Color.fromARGB(255, 244, 243, 243),
              ),
            ),
            const SizedBox(height: 12),
            Expanded(
              child: ListView.builder(
                itemCount: datasets.length,
                itemBuilder: (context, index) {
                  final data = datasets[index];
                  return Container(
                    margin: const EdgeInsets.symmetric(vertical: 8),
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 248, 245, 245),
                      border: Border.all(color: Colors.grey.shade400),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(data['title']!,
                            style: const TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 16)),
                        const SizedBox(height: 4),
                        Text(data['description']!,
                            style: const TextStyle(fontSize: 13)),
                        const SizedBox(height: 12),
                        Row(
                          children: [
                            _pill(data['type']!),
                            const SizedBox(width: 8),
                            _pill(data['size']!),
                            const Spacer(),
                            ElevatedButton(
                              onPressed: () {},
                              style: ElevatedButton.styleFrom(
                                backgroundColor: const Color(0xFF144BA6),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                              ),
                              child: const Text(
                                "Download",
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                          ],
                        )
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}

// ---------------- UPLOAD DATASET SCREEN ----------------
class UploadDatasetScreen extends StatelessWidget {
  static const primaryBlue = Color(0xFF144BA6);

  const UploadDatasetScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Upload Dataset"),
        centerTitle: true,
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        actions: [
          IconButton(
            icon: const Icon(Icons.person),
            onPressed: () {
              // Navigate to profile
            },
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            const Text("Title", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            TextField(
              decoration: InputDecoration(
                hintText: 'Enter dataset title',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("Description", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            TextField(
              maxLines: 3,
              decoration: InputDecoration(
                hintText: 'Enter dataset description',
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
            ),
            const SizedBox(height: 20),
            const Text("License", style: TextStyle(fontSize: 16)),
            const SizedBox(height: 8),
            Container(
              height: 120,
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey.shade400),
                borderRadius: BorderRadius.circular(12),
              ),
              child: const Center(
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.upload_file, size: 40, color: primaryBlue),
                    SizedBox(height: 8),
                    Text('Upload file', style: TextStyle(color: Colors.black)),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 24),
            ElevatedButton(
              onPressed: () {
                // Handle submission
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryBlue,
                foregroundColor: Colors.white,
                minimumSize: const Size(double.infinity, 50),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              child: const Text("Submit"),
            ),
          ],
        ),
      ),
    );
  }
}
