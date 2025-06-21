// // // // import 'package:flutter/material.dart';

// // // // class ProfileAndLoginPage extends StatelessWidget {
// // // //   const ProfileAndLoginPage({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return DefaultTabController(
// // // //       length: 2,
// // // //       child: Scaffold(
// // // //         appBar: AppBar(
// // // //           backgroundColor: Colors.white,
// // // //           elevation: 1,
// // // //           title: const Text(''),
// // // //           bottom: const TabBar(
// // // //             labelColor: Colors.blue,
// // // //             unselectedLabelColor: Colors.black,
// // // //             indicatorColor: Colors.blue,
// // // //             tabs: [
// // // //               Tab(text: 'Log In'),
// // // //               Tab(text: 'Sign Up'),
// // // //             ],
// // // //           ),
// // // //         ),
// // // //         body: const TabBarView(
// // // //           children: [
// // // //             LoginForm(),
// // // //             SignupForm(),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // // -------------------- LOGIN FORM --------------------

// // // // class LoginForm extends StatelessWidget {
// // // //   const LoginForm({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Padding(
// // // //       padding: const EdgeInsets.all(24.0),
// // // //       child: ListView(
// // // //         children: [
// // // //           const SizedBox(height: 32),
// // // //           const Text('Sign in',
// // // //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
// // // //           const SizedBox(height: 24),
// // // //           const TextField(
// // // //             decoration: InputDecoration(
// // // //                 labelText: 'Email Address', border: OutlineInputBorder()),
// // // //           ),
// // // //           const SizedBox(height: 16),
// // // //           const TextField(
// // // //             obscureText: true,
// // // //             decoration: InputDecoration(
// // // //                 labelText: 'Password', border: OutlineInputBorder()),
// // // //           ),
// // // //           const SizedBox(height: 24),
// // // //           ElevatedButton(
// // // //             onPressed: () {
// // // //               Navigator.pushReplacement(
// // // //                 context,
// // // //                 MaterialPageRoute(builder: (_) => const ProfilePage()),
// // // //               );
// // // //             },
// // // //             style: ElevatedButton.styleFrom(
// // // //               minimumSize: const Size(double.infinity, 48),
// // // //               backgroundColor: Colors.blue,
// // // //               foregroundColor: Colors.white,
// // // //             ),
// // // //             child: const Text('Sign in'),
// // // //           ),
// // // //           const SizedBox(height: 12),
// // // //           Center(
// // // //             child: TextButton(
// // // //               onPressed: () {
// // // //                 DefaultTabController.of(context).animateTo(1);
// // // //               },
// // // //               child: const Text("Don't have an account? Sign up"),
// // // //             ),
// // // //           )
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // // -------------------- SIGNUP FORM --------------------

// // // // class SignupForm extends StatefulWidget {
// // // //   const SignupForm({super.key});

// // // //   @override
// // // //   State<SignupForm> createState() => _SignupFormState();
// // // // }

// // // // class _SignupFormState extends State<SignupForm> {
// // // //   final _formKey = GlobalKey<FormState>();
// // // //   final _nameController = TextEditingController();
// // // //   final _emailController = TextEditingController();
// // // //   final _passwordController = TextEditingController();
// // // //   final _confirmPasswordController = TextEditingController();

// // // //   String? _errorMessage;

// // // //   void _submitForm() {
// // // //     final password = _passwordController.text;
// // // //     final confirmPassword = _confirmPasswordController.text;

// // // //     if (_formKey.currentState!.validate()) {
// // // //       if (password != confirmPassword) {
// // // //         setState(() {
// // // //           _errorMessage = "Passwords do not match.";
// // // //         });
// // // //         return;
// // // //       }

// // // //       if (password.length < 8) {
// // // //         setState(() {
// // // //           _errorMessage = "Password must be at least 8 characters.";
// // // //         });
// // // //         return;
// // // //       }

// // // //       setState(() => _errorMessage = null);
// // // //       Navigator.pushReplacement(
// // // //         context,
// // // //         MaterialPageRoute(builder: (_) => const ProfilePage()),
// // // //       );
// // // //     }
// // // //   }

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Padding(
// // // //       padding: const EdgeInsets.all(24.0),
// // // //       child: Form(
// // // //         key: _formKey,
// // // //         child: ListView(
// // // //           children: [
// // // //             const SizedBox(height: 32),
// // // //             const Text('Sign Up',
// // // //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
// // // //             const SizedBox(height: 16),
// // // //             TextFormField(
// // // //               controller: _nameController,
// // // //               decoration: const InputDecoration(
// // // //                   labelText: 'Full Name', border: OutlineInputBorder()),
// // // //               validator: (value) =>
// // // //                   value!.isEmpty ? "Please enter your name" : null,
// // // //             ),
// // // //             const SizedBox(height: 16),
// // // //             TextFormField(
// // // //               controller: _emailController,
// // // //               decoration: const InputDecoration(
// // // //                   labelText: 'Email Address', border: OutlineInputBorder()),
// // // //               validator: (value) =>
// // // //                   value!.isEmpty ? "Please enter your email" : null,
// // // //             ),
// // // //             const SizedBox(height: 16),
// // // //             TextFormField(
// // // //               controller: _passwordController,
// // // //               obscureText: true,
// // // //               decoration: const InputDecoration(
// // // //                   labelText: 'Password', border: OutlineInputBorder()),
// // // //               validator: (value) =>
// // // //                   value!.isEmpty ? "Please enter a password" : null,
// // // //             ),
// // // //             const SizedBox(height: 16),
// // // //             TextFormField(
// // // //               controller: _confirmPasswordController,
// // // //               obscureText: true,
// // // //               decoration: const InputDecoration(
// // // //                   labelText: 'Confirm Password', border: OutlineInputBorder()),
// // // //               validator: (value) =>
// // // //                   value!.isEmpty ? "Please confirm your password" : null,
// // // //             ),
// // // //             const SizedBox(height: 16),
// // // //             if (_errorMessage != null)
// // // //               Text(
// // // //                 _errorMessage!,
// // // //                 style: const TextStyle(color: Colors.red),
// // // //                 textAlign: TextAlign.center,
// // // //               ),
// // // //             const SizedBox(height: 16),
// // // //             ElevatedButton(
// // // //               onPressed: _submitForm,
// // // //               style: ElevatedButton.styleFrom(
// // // //                 minimumSize: const Size(double.infinity, 48),
// // // //                 backgroundColor: Colors.blue,
// // // //                 foregroundColor: Colors.white,
// // // //               ),
// // // //               child: const Text('Sign up'),
// // // //             ),
// // // //             const SizedBox(height: 12),
// // // //             Center(
// // // //               child: TextButton(
// // // //                 onPressed: () {
// // // //                   DefaultTabController.of(context).animateTo(0);
// // // //                 },
// // // //                 child: const Text("Already have an account? Sign in"),
// // // //               ),
// // // //             )
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // // // -------------------- PROFILE PAGE --------------------

// // // // class ProfilePage extends StatelessWidget {
// // // //   const ProfilePage({super.key});

// // // //   @override
// // // //   Widget build(BuildContext context) {
// // // //     return Scaffold(
// // // //       appBar: AppBar(title: const Text("Profile")),
// // // //       body: Padding(
// // // //         padding: const EdgeInsets.all(16.0),
// // // //         child: ListView(
// // // //           children: [
// // // //             Row(
// // // //               children: const [
// // // //                 CircleAvatar(
// // // //                   radius: 35,
// // // //                   backgroundImage: AssetImage('assets/profile.jpg'),
// // // //                 ),
// // // //                 SizedBox(width: 12),
// // // //                 Column(
// // // //                   crossAxisAlignment: CrossAxisAlignment.start,
// // // //                   children: [
// // // //                     Text("shugri idris",
// // // //                         style: TextStyle(
// // // //                             fontSize: 18, fontWeight: FontWeight.bold)),
// // // //                     Text("Researcher", style: TextStyle(color: Colors.grey)),
// // // //                   ],
// // // //                 ),
// // // //               ],
// // // //             ),
// // // //             const SizedBox(height: 16),
// // // //             const Text(
// // // //               "I am a researcher focused on natural language processing and speech recognition.",
// // // //               style: TextStyle(fontSize: 14),
// // // //             ),
// // // //             const SizedBox(height: 16),
// // // //             const Row(
// // // //               mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //               children: [
// // // //                 Text("6 datasets"),
// // // //                 Text("1K likes"),
// // // //                 Text("800 downloads"),
// // // //               ],
// // // //             ),
// // // //             const SizedBox(height: 24),
// // // //             const Text("Datasets",
// // // //                 style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
// // // //             const SizedBox(height: 12),
// // // //             _datasetCard("Somali Text Dataset", "Lorem ipsum dolor sit amet...",
// // // //                 "100K examples", "1201 likes"),
// // // //             _datasetCard("Somali Image Collection",
// // // //                 "Lorem ipsum dolor sit amet...", "50K images", "170 likes"),
// // // //             _datasetCard(
// // // //                 "Somali Speech Corpus",
// // // //                 "Lorem ipsum dolor sit amet...",
// // // //                 "85K audio files",
// // // //                 "110 likes"),
// // // //             _datasetCard("Somali Text Dataset", "Lorem ipsum dolor sit amet...",
// // // //                 "100K examples", "1201 likes"),
// // // //             _datasetCard("Somali Image Collection",
// // // //                 "Lorem ipsum dolor sit amet...", "50K images", "170 likes"),
// // // //             _datasetCard(
// // // //                 "Somali Speech Corpus",
// // // //                 "Lorem ipsum dolor sit amet...",
// // // //                 "85K audio files",
// // // //                 "110 likes"),
// // // //             _datasetCard("Somali Text Dataset", "Lorem ipsum dolor sit amet...",
// // // //                 "100K examples", "1201 likes"),
// // // //             _datasetCard("Somali Image Collection",
// // // //                 "Lorem ipsum dolor sit amet...", "50K images", "170 likes"),
// // // //             _datasetCard(
// // // //                 "Somali Speech Corpus",
// // // //                 "Lorem ipsum dolor sit amet...",
// // // //                 "85K audio files",
// // // //                 "110 likes"),
// // // //             _datasetCard("Somali Text Dataset", "Lorem ipsum dolor sit amet...",
// // // //                 "100K examples", "1201 likes"),
// // // //             _datasetCard("Somali Image Collection",
// // // //                 "Lorem ipsum dolor sit amet...", "50K images", "170 likes"),
// // // //             _datasetCard(
// // // //                 "Somali Speech Corpus",
// // // //                 "Lorem ipsum dolor sit amet...",
// // // //                 "85K audio files",
// // // //                 "110 likes"),
// // // //           ],
// // // //         ),
// // // //       ),
// // // //     );
// // // //   }

// // // //   static Widget _datasetCard(
// // // //       String title, String desc, String stat1, String stat2) {
// // // //     return Container(
// // // //       margin: const EdgeInsets.only(bottom: 12),
// // // //       padding: const EdgeInsets.all(12),
// // // //       decoration: BoxDecoration(
// // // //         border: Border.all(color: Colors.grey.shade300),
// // // //         borderRadius: BorderRadius.circular(12),
// // // //       ),
// // // //       child: Column(
// // // //         crossAxisAlignment: CrossAxisAlignment.start,
// // // //         children: [
// // // //           Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
// // // //           const SizedBox(height: 4),
// // // //           Text(desc, style: const TextStyle(color: Colors.grey)),
// // // //           const SizedBox(height: 8),
// // // //           Row(
// // // //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // // //             children: [
// // // //               Text(stat1),
// // // //               Text(stat2),
// // // //             ],
// // // //           )
// // // //         ],
// // // //       ),
// // // //     );
// // // //   }
// // // // }

// // // import 'package:flutter/material.dart';

// // // class ProfileAndLoginPage extends StatefulWidget {
// // //   const ProfileAndLoginPage({super.key});

// // //   @override
// // //   State<ProfileAndLoginPage> createState() => _ProfileAndLoginPageState();
// // // }

// // // class _ProfileAndLoginPageState extends State<ProfileAndLoginPage> {
// // //   int _tabIndex = 0;
// // //   bool _isLoggedIn = false;

// // //   void _onSignIn() {
// // //     setState(() {
// // //       _isLoggedIn = true;
// // //     });
// // //   }

// // //   void _onSignUp() {
// // //     setState(() {
// // //       _isLoggedIn = true;
// // //     });
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Column(
// // //       children: [
// // //         TabBar(
// // //           labelColor: Colors.blue,
// // //           unselectedLabelColor: Colors.black,
// // //           indicatorColor: Colors.blue,
// // //           onTap: (index) => setState(() => _tabIndex = index),
// // //           tabs: const [
// // //             Tab(text: 'Log In'),
// // //             Tab(text: 'Sign Up'),
// // //           ],
// // //         ),
// // //         Expanded(
// // //           child: _isLoggedIn
// // //               ? const ProfilePage()
// // //               : _tabIndex == 0
// // //                   ? LoginForm(onSignIn: _onSignIn)
// // //                   : SignupForm(onSignUp: _onSignUp),
// // //         ),
// // //       ],
// // //     );
// // //   }
// // // }

// // // class LoginForm extends StatelessWidget {
// // //   final VoidCallback onSignIn;
// // //   const LoginForm({super.key, required this.onSignIn});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(
// // //       padding: const EdgeInsets.all(24.0),
// // //       child: ListView(
// // //         children: [
// // //           const SizedBox(height: 32),
// // //           const Text('Sign in',
// // //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
// // //           const SizedBox(height: 24),
// // //           const TextField(
// // //             decoration: InputDecoration(
// // //                 labelText: 'Email Address', border: OutlineInputBorder()),
// // //           ),
// // //           const SizedBox(height: 16),
// // //           const TextField(
// // //             obscureText: true,
// // //             decoration: InputDecoration(
// // //                 labelText: 'Password', border: OutlineInputBorder()),
// // //           ),
// // //           const SizedBox(height: 24),
// // //           ElevatedButton(
// // //             onPressed: onSignIn,
// // //             style: ElevatedButton.styleFrom(
// // //               minimumSize: const Size(double.infinity, 48),
// // //               backgroundColor: Colors.blue,
// // //               foregroundColor: Colors.white,
// // //             ),
// // //             child: const Text('Sign in'),
// // //           ),
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // // class SignupForm extends StatefulWidget {
// // //   final VoidCallback onSignUp;
// // //   const SignupForm({super.key, required this.onSignUp});

// // //   @override
// // //   State<SignupForm> createState() => _SignupFormState();
// // // }

// // // class _SignupFormState extends State<SignupForm> {
// // //   final _formKey = GlobalKey<FormState>();
// // //   final _nameController = TextEditingController();
// // //   final _emailController = TextEditingController();
// // //   final _passwordController = TextEditingController();
// // //   final _confirmPasswordController = TextEditingController();

// // //   String? _errorMessage;

// // //   void _submitForm() {
// // //     final password = _passwordController.text;
// // //     final confirmPassword = _confirmPasswordController.text;

// // //     if (_formKey.currentState!.validate()) {
// // //       if (password != confirmPassword) {
// // //         setState(() {
// // //           _errorMessage = "Passwords do not match.";
// // //         });
// // //         return;
// // //       }

// // //       if (password.length < 8) {
// // //         setState(() {
// // //           _errorMessage = "Password must be at least 8 characters.";
// // //         });
// // //         return;
// // //       }

// // //       setState(() => _errorMessage = null);
// // //       widget.onSignUp();
// // //     }
// // //   }

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(
// // //       padding: const EdgeInsets.all(24.0),
// // //       child: Form(
// // //         key: _formKey,
// // //         child: ListView(
// // //           children: [
// // //             const SizedBox(height: 32),
// // //             const Text('Sign Up',
// // //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
// // //             const SizedBox(height: 16),
// // //             TextFormField(
// // //               controller: _nameController,
// // //               decoration: const InputDecoration(
// // //                   labelText: 'Full Name', border: OutlineInputBorder()),
// // //               validator: (value) =>
// // //                   value!.isEmpty ? "Please enter your name" : null,
// // //             ),
// // //             const SizedBox(height: 16),
// // //             TextFormField(
// // //               controller: _emailController,
// // //               decoration: const InputDecoration(
// // //                   labelText: 'Email Address', border: OutlineInputBorder()),
// // //               validator: (value) =>
// // //                   value!.isEmpty ? "Please enter your email" : null,
// // //             ),
// // //             const SizedBox(height: 16),
// // //             TextFormField(
// // //               controller: _passwordController,
// // //               obscureText: true,
// // //               decoration: const InputDecoration(
// // //                   labelText: 'Password', border: OutlineInputBorder()),
// // //               validator: (value) =>
// // //                   value!.isEmpty ? "Please enter a password" : null,
// // //             ),
// // //             const SizedBox(height: 16),
// // //             TextFormField(
// // //               controller: _confirmPasswordController,
// // //               obscureText: true,
// // //               decoration: const InputDecoration(
// // //                   labelText: 'Confirm Password', border: OutlineInputBorder()),
// // //               validator: (value) =>
// // //                   value!.isEmpty ? "Please confirm your password" : null,
// // //             ),
// // //             const SizedBox(height: 16),
// // //             if (_errorMessage != null)
// // //               Text(
// // //                 _errorMessage!,
// // //                 style: const TextStyle(color: Colors.red),
// // //                 textAlign: TextAlign.center,
// // //               ),
// // //             const SizedBox(height: 16),
// // //             ElevatedButton(
// // //               onPressed: _submitForm,
// // //               style: ElevatedButton.styleFrom(
// // //                 minimumSize: const Size(double.infinity, 48),
// // //                 backgroundColor: Colors.blue,
// // //                 foregroundColor: Colors.white,
// // //               ),
// // //               child: const Text('Sign up'),
// // //             ),
// // //           ],
// // //         ),
// // //       ),
// // //     );
// // //   }
// // // }

// // // class ProfilePage extends StatelessWidget {
// // //   const ProfilePage({super.key});

// // //   @override
// // //   Widget build(BuildContext context) {
// // //     return Padding(
// // //       padding: const EdgeInsets.all(16.0),
// // //       child: ListView(
// // //         children: [
// // //           Row(
// // //             children: const [
// // //               CircleAvatar(
// // //                 radius: 35,
// // //                 backgroundImage: AssetImage('assets/profile.jpg'),
// // //               ),
// // //               SizedBox(width: 12),
// // //               Column(
// // //                 crossAxisAlignment: CrossAxisAlignment.start,
// // //                 children: [
// // //                   Text("Shugri Idris",
// // //                       style:
// // //                           TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
// // //                   Text("Researcher", style: TextStyle(color: Colors.grey)),
// // //                 ],
// // //               ),
// // //             ],
// // //           ),
// // //           const SizedBox(height: 16),
// // //           const Text(
// // //             "I am a researcher focused on natural language processing and speech recognition.",
// // //             style: TextStyle(fontSize: 14),
// // //           ),
// // //           const SizedBox(height: 16),
// // //           const Row(
// // //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //             children: [
// // //               Text("6 datasets"),
// // //               Text("1K likes"),
// // //               Text("800 downloads"),
// // //             ],
// // //           ),
// // //           const SizedBox(height: 24),
// // //           const Text("Datasets",
// // //               style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
// // //           const SizedBox(height: 12),
// // //           _datasetCard("Somali Text Dataset", "Lorem ipsum dolor sit amet...",
// // //               "100K examples", "1201 likes"),
// // //           _datasetCard("Somali Image Collection",
// // //               "Lorem ipsum dolor sit amet...", "50K images", "170 likes"),
// // //           _datasetCard("Somali Speech Corpus", "Lorem ipsum dolor sit amet...",
// // //               "85K audio files", "110 likes"),
// // //         ],
// // //       ),
// // //     );
// // //   }

// // //   static Widget _datasetCard(
// // //       String title, String desc, String stat1, String stat2) {
// // //     return Container(
// // //       margin: const EdgeInsets.only(bottom: 12),
// // //       padding: const EdgeInsets.all(12),
// // //       decoration: BoxDecoration(
// // //         border: Border.all(color: Colors.grey.shade300),
// // //         borderRadius: BorderRadius.circular(12),
// // //       ),
// // //       child: Column(
// // //         crossAxisAlignment: CrossAxisAlignment.start,
// // //         children: [
// // //           Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
// // //           const SizedBox(height: 4),
// // //           Text(desc, style: const TextStyle(color: Colors.grey)),
// // //           const SizedBox(height: 8),
// // //           Row(
// // //             mainAxisAlignment: MainAxisAlignment.spaceBetween,
// // //             children: [
// // //               Text(stat1),
// // //               Text(stat2),
// // //             ],
// // //           )
// // //         ],
// // //       ),
// // //     );
// // //   }
// // // }

// // import 'package:flutter/material.dart';

// // void main() {
// //   runApp(const MyApp());
// // }

// // class MyApp extends StatelessWidget {
// //   const MyApp({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return MaterialApp(
// //       debugShowCheckedModeBanner: false,
// //       title: 'Somali Dataset Repository',
// //       theme: ThemeData(primarySwatch: Colors.blue),
// //       home: const MainNavigationScreen(),
// //     );
// //   }
// // }

// // class MainNavigationScreen extends StatefulWidget {
// //   const MainNavigationScreen({super.key});

// //   @override
// //   State<MainNavigationScreen> createState() => _MainNavigationScreenState();
// // }

// // class _MainNavigationScreenState extends State<MainNavigationScreen> {
// //   int _currentIndex = 0;

// //   final List<Widget> _pages = [
// //     const Center(child: Text("Home Page")),
// //     const Center(child: Text("Datasets Page")),
// //     const Center(child: Text("Upload Page")),
// //     const ProfileAndLoginPage(),
// //   ];

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: _pages[_currentIndex],
// //       bottomNavigationBar: BottomNavigationBar(
// //         currentIndex: _currentIndex,
// //         onTap: (index) => setState(() => _currentIndex = index),
// //         selectedItemColor: Colors.blue,
// //         unselectedItemColor: Colors.grey,
// //         showSelectedLabels: false,
// //         showUnselectedLabels: false,
// //         items: const [
// //           BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
// //           BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Datasets'),
// //           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Upload'),
// //           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class ProfileAndLoginPage extends StatelessWidget {
// //   const ProfileAndLoginPage({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return DefaultTabController(
// //       length: 2,
// //       child: Scaffold(
// //         appBar: AppBar(
// //           backgroundColor: Colors.white,
// //           elevation: 1,
// //           title: const Text(''),
// //           bottom: const TabBar(
// //             labelColor: Colors.blue,
// //             unselectedLabelColor: Colors.black,
// //             indicatorColor: Colors.blue,
// //             tabs: [
// //               Tab(text: 'Log In'),
// //               Tab(text: 'Sign Up'),
// //             ],
// //           ),
// //         ),
// //         body: const TabBarView(
// //           children: [
// //             LoginForm(),
// //             SignupForm(),
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// // class LoginForm extends StatelessWidget {
// //   const LoginForm({super.key});

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(24.0),
// //       child: ListView(
// //         children: [
// //           const SizedBox(height: 32),
// //           const Text('Sign in',
// //               style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
// //           const SizedBox(height: 24),
// //           const TextField(
// //               decoration: InputDecoration(
// //                   labelText: 'Email Address', border: OutlineInputBorder())),
// //           const SizedBox(height: 16),
// //           const TextField(
// //               obscureText: true,
// //               decoration: InputDecoration(
// //                   labelText: 'Password', border: OutlineInputBorder())),
// //           const SizedBox(height: 24),
// //           ElevatedButton(
// //             onPressed: () {
// //               ScaffoldMessenger.of(context)
// //                   .showSnackBar(const SnackBar(content: Text("Signed In!")));
// //             },
// //             style: ElevatedButton.styleFrom(
// //                 minimumSize: const Size(double.infinity, 48),
// //                 backgroundColor: Colors.blue,
// //                 foregroundColor: Colors.white),
// //             child: const Text('Sign in'),
// //           ),
// //           const SizedBox(height: 12),
// //           Center(
// //             child: TextButton(
// //               onPressed: () {
// //                 DefaultTabController.of(context).animateTo(1);
// //               },
// //               child: const Text("Don't have an account? Sign up"),
// //             ),
// //           )
// //         ],
// //       ),
// //     );
// //   }
// // }

// // class SignupForm extends StatefulWidget {
// //   const SignupForm({super.key});

// //   @override
// //   State<SignupForm> createState() => _SignupFormState();
// // }

// // class _SignupFormState extends State<SignupForm> {
// //   final _formKey = GlobalKey<FormState>();
// //   final _nameController = TextEditingController();
// //   final _emailController = TextEditingController();
// //   final _passwordController = TextEditingController();
// //   final _confirmPasswordController = TextEditingController();

// //   String? _errorMessage;

// //   void _submitForm() {
// //     final password = _passwordController.text;
// //     final confirmPassword = _confirmPasswordController.text;

// //     if (_formKey.currentState!.validate()) {
// //       if (password != confirmPassword) {
// //         setState(() => _errorMessage = "Passwords do not match.");
// //         return;
// //       }
// //       if (password.length < 8) {
// //         setState(
// //             () => _errorMessage = "Password must be at least 8 characters.");
// //         return;
// //       }

// //       setState(() => _errorMessage = null);
// //       ScaffoldMessenger.of(context)
// //           .showSnackBar(const SnackBar(content: Text("Account Created!")));
// //     }
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Padding(
// //       padding: const EdgeInsets.all(24.0),
// //       child: Form(
// //         key: _formKey,
// //         child: ListView(
// //           children: [
// //             const SizedBox(height: 32),
// //             const Text('Sign Up',
// //                 style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
// //             const SizedBox(height: 16),
// //             TextFormField(
// //                 controller: _nameController,
// //                 decoration: const InputDecoration(
// //                     labelText: 'Full Name', border: OutlineInputBorder()),
// //                 validator: (value) =>
// //                     value!.isEmpty ? "Please enter your name" : null),
// //             const SizedBox(height: 16),
// //             TextFormField(
// //                 controller: _emailController,
// //                 decoration: const InputDecoration(
// //                     labelText: 'Email Address', border: OutlineInputBorder()),
// //                 validator: (value) =>
// //                     value!.isEmpty ? "Please enter your email" : null),
// //             const SizedBox(height: 16),
// //             TextFormField(
// //                 controller: _passwordController,
// //                 obscureText: true,
// //                 decoration: const InputDecoration(
// //                     labelText: 'Password', border: OutlineInputBorder()),
// //                 validator: (value) =>
// //                     value!.isEmpty ? "Please enter a password" : null),
// //             const SizedBox(height: 16),
// //             TextFormField(
// //                 controller: _confirmPasswordController,
// //                 obscureText: true,
// //                 decoration: const InputDecoration(
// //                     labelText: 'Confirm Password',
// //                     border: OutlineInputBorder()),
// //                 validator: (value) =>
// //                     value!.isEmpty ? "Please confirm your password" : null),
// //             const SizedBox(height: 16),
// //             if (_errorMessage != null)
// //               Text(_errorMessage!,
// //                   style: const TextStyle(color: Colors.red),
// //                   textAlign: TextAlign.center),
// //             const SizedBox(height: 16),
// //             ElevatedButton(
// //               onPressed: _submitForm,
// //               style: ElevatedButton.styleFrom(
// //                   minimumSize: const Size(double.infinity, 48),
// //                   backgroundColor: Colors.blue,
// //                   foregroundColor: Colors.white),
// //               child: const Text('Sign up'),
// //             ),
// //             const SizedBox(height: 12),
// //             Center(
// //               child: TextButton(
// //                 onPressed: () {
// //                   DefaultTabController.of(context).animateTo(0);
// //                 },
// //                 child: const Text("Already have an account? Sign in"),
// //               ),
// //             )
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }

// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Somali Dataset Repository',
//       debugShowCheckedModeBanner: false,
//       theme: ThemeData(
//         primarySwatch: Colors.blue,
//         scaffoldBackgroundColor: Colors.grey[100],
//       ),
//       home: const HomeScreen(),
//     );
//   }
// }

// class HomeScreen extends StatefulWidget {
//   const HomeScreen({super.key});

//   @override
//   State<HomeScreen> createState() => _HomeScreenState();
// }

// class _HomeScreenState extends State<HomeScreen> {
//   int _currentIndex = 0;

//   void _goToProfile() {
//     setState(() {
//       _currentIndex = 3;
//     });
//   }

//   final List<Widget> _pages = [];

//   @override
//   void initState() {
//     super.initState();
//     _pages.addAll([
//       const Center(child: Text("Home Page")),
//       const Center(child: Text("Folder Page")),
//       const Center(child: Text("Upload Page")),
//       ProfileAndLoginPage(onLoginSuccess: () => _goToProfile()),
//     ]);
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
//           BottomNavigationBarItem(icon: Icon(Icons.folder), label: 'Folder'),
//           BottomNavigationBarItem(icon: Icon(Icons.add), label: 'Upload'),
//           BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
//         ],
//       ),
//     );
//   }
// }

// class ProfileAndLoginPage extends StatelessWidget {
//   final VoidCallback onLoginSuccess;

//   const ProfileAndLoginPage({super.key, required this.onLoginSuccess});

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: 2,
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: Colors.white,
//           elevation: 1,
//           bottom: const TabBar(
//             labelColor: Colors.blue,
//             unselectedLabelColor: Colors.black,
//             indicatorColor: Colors.blue,
//             tabs: [
//               Tab(text: 'Log In'),
//               Tab(text: 'Sign Up'),
//             ],
//           ),
//         ),
//         body: TabBarView(
//           children: [
//             LoginForm(onLoginSuccess: onLoginSuccess),
//             SignupForm(onSignupSuccess: onLoginSuccess),
//           ],
//         ),
//       ),
//     );
//   }
// }

// class LoginForm extends StatelessWidget {
//   final VoidCallback onLoginSuccess;
//   const LoginForm({super.key, required this.onLoginSuccess});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: ListView(
//         children: [
//           const SizedBox(height: 32),
//           const Text('Sign in', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 24),
//           const TextField(
//             decoration: InputDecoration(labelText: 'Email Address', border: OutlineInputBorder()),
//           ),
//           const SizedBox(height: 16),
//           const TextField(
//             obscureText: true,
//             decoration: InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
//           ),
//           const SizedBox(height: 24),
//           ElevatedButton(
//             onPressed: onLoginSuccess,
//             style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 48)),
//             child: const Text('Sign in'),
//           ),
//           const SizedBox(height: 12),
//           Center(
//             child: TextButton(
//               onPressed: () => DefaultTabController.of(context).animateTo(1),
//               child: const Text("Don't have an account? Sign up"),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// class SignupForm extends StatefulWidget {
//   final VoidCallback onSignupSuccess;
//   const SignupForm({super.key, required this.onSignupSuccess});

//   @override
//   State<SignupForm> createState() => _SignupFormState();
// }

// class _SignupFormState extends State<SignupForm> {
//   final _passwordController = TextEditingController();
//   final _confirmController = TextEditingController();
//   String? _error;

//   void _handleSignup() {
//     final pass = _passwordController.text;
//     final confirm = _confirmController.text;

//     if (pass != confirm) {
//       setState(() => _error = "Passwords do not match");
//       return;
//     }
//     if (pass.length < 8) {
//       setState(() => _error = "Password must be at least 8 characters");
//       return;
//     }

//     setState(() => _error = null);
//     widget.onSignupSuccess();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(24.0),
//       child: ListView(
//         children: [
//           const SizedBox(height: 32),
//           const Text('Sign Up', style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//           const SizedBox(height: 16),
//           const TextField(
//             decoration: InputDecoration(labelText: 'Full Name', border: OutlineInputBorder()),
//           ),
//           const SizedBox(height: 16),
//           const TextField(
//             decoration: InputDecoration(labelText: 'Email Address', border: OutlineInputBorder()),
//           ),
//           const SizedBox(height: 16),
//           TextField(
//             controller: _passwordController,
//             obscureText: true,
//             decoration: const InputDecoration(labelText: 'Password', border: OutlineInputBorder()),
//           ),
//           const SizedBox(height: 16),
//           TextField(
//             controller: _confirmController,
//             obscureText: true,
//             decoration: const InputDecoration(labelText: 'Confirm Password', border: OutlineInputBorder()),
//           ),
//           if (_error != null) ...[
//             const SizedBox(height: 12),
//             Text(_error!, style: const TextStyle(color: Colors.red), textAlign: TextAlign.center),
//           ],
//           const SizedBox(height: 24),
//           ElevatedButton(
//             onPressed: _handleSignup,
//             style: ElevatedButton.styleFrom(minimumSize: const Size(double.infinity, 48)),
//             child: const Text('Sign up'),
//           ),
//           const SizedBox(height: 12),
//           Center(
//             child: TextButton(
//               onPressed: () => DefaultTabController.of(context).animateTo(0),
//               child: const Text("Already have an account? Sign in"),
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';

// class ProfileAndLoginPage extends StatefulWidget {
//   final Function(int) onTabChange;

//   const ProfileAndLoginPage({super.key, required this.onTabChange, required void Function() onLoginSuccess});

//   @override
//   State<ProfileAndLoginPage> createState() => _ProfileAndLoginPageState();
// }

// class _ProfileAndLoginPageState extends State<ProfileAndLoginPage> with TickerProviderStateMixin {
//   late TabController _tabController;
//   bool _isLoggedIn = false;

//   @override
//   void initState() {
//     super.initState();
//     _tabController = TabController(length: 2, vsync: this);
//   }

//   void _onSuccessLogin() {
//     setState(() {
//       _isLoggedIn = true;
//     });
//     widget.onTabChange(3); // go to Profile tab
//   }

//   @override
//   Widget build(BuildContext context) {
//     return _isLoggedIn
//         ? const ProfilePage()
//         : Column(
//             children: [
//               Container(
//                 color: Colors.white,
//                 child: TabBar(
//                   controller: _tabController,
//                   labelColor: Colors.blue,
//                   unselectedLabelColor: Colors.black,
//                   indicatorColor: Colors.blue,
//                   tabs: const [
//                     Tab(text: 'Log In'),
//                     Tab(text: 'Sign Up'),
//                   ],
//                 ),
//               ),
//               Expanded(
//                 child: TabBarView(
//                   controller: _tabController,
//                   children: [
//                     LoginForm(onLoginSuccess: _onSuccessLogin),
//                     SignupForm(onSignupSuccess: _onSuccessLogin),
//                   ],
//                 ),
//               )
//             ],
//           );
//   }
// }

import 'package:flutter/material.dart';

class ProfileAndLoginPage extends StatefulWidget {
  final Function(int) onTabChange;

  const ProfileAndLoginPage({super.key, required this.onTabChange});

  @override
  State<ProfileAndLoginPage> createState() => _ProfileAndLoginPageState();
}

class _ProfileAndLoginPageState extends State<ProfileAndLoginPage>
    with TickerProviderStateMixin {
  late TabController _tabController;
  bool _isLoggedIn = false;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  void _onSuccessLogin() {
    setState(() => _isLoggedIn = true);
    widget.onTabChange(3);
  }

  @override
  Widget build(BuildContext context) {
    return _isLoggedIn
        ? const ProfilePage()
        : Column(
            children: [
              Container(
                color: Colors.white,
                padding: const EdgeInsets.only(top: 32), // Add space from top
                child: TabBar(
                  controller: _tabController,
                  labelColor: Colors.blue,
                  unselectedLabelColor: Colors.black,
                  indicatorColor: Colors.blue,
                  tabs: const [
                    Tab(text: 'Log In'),
                    Tab(text: 'Sign Up'),
                  ],
                ),
              ),
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: [
                    LoginForm(onLoginSuccess: _onSuccessLogin),
                    SignupForm(onSignupSuccess: _onSuccessLogin),
                  ],
                ),
              )
            ],
          );
  }
}

class LoginForm extends StatelessWidget {
  final VoidCallback onLoginSuccess;
  const LoginForm({super.key, required this.onLoginSuccess});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        children: [
          const SizedBox(height: 32),
          const Text('Sign In',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 24),
          const TextField(
            decoration: InputDecoration(
                labelText: 'Email Address', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),
          const TextField(
            obscureText: true,
            decoration: InputDecoration(
                labelText: 'Password', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: onLoginSuccess,
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48)),
            child: const Text('Sign In'),
          ),
        ],
      ),
    );
  }
}

class SignupForm extends StatefulWidget {
  final VoidCallback onSignupSuccess;
  const SignupForm({super.key, required this.onSignupSuccess});

  @override
  State<SignupForm> createState() => _SignupFormState();
}

class _SignupFormState extends State<SignupForm> {
  final _passwordController = TextEditingController();
  final _confirmController = TextEditingController();
  String? _error;

  void _handleSignup() {
    final pass = _passwordController.text;
    final confirm = _confirmController.text;

    if (pass != confirm) {
      setState(() => _error = "Passwords do not match");
      return;
    }
    if (pass.length < 8) {
      setState(() => _error = "Password must be at least 8 characters");
      return;
    }

    setState(() => _error = null);
    widget.onSignupSuccess();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: ListView(
        children: [
          const SizedBox(height: 32),
          const Text('Sign Up',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
                labelText: 'Full Name', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),
          const TextField(
            decoration: InputDecoration(
                labelText: 'Email Address', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _passwordController,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Password', border: OutlineInputBorder()),
          ),
          const SizedBox(height: 16),
          TextField(
            controller: _confirmController,
            obscureText: true,
            decoration: const InputDecoration(
                labelText: 'Confirm Password', border: OutlineInputBorder()),
          ),
          if (_error != null) ...[
            const SizedBox(height: 12),
            Text(_error!,
                style: const TextStyle(color: Colors.red),
                textAlign: TextAlign.center),
          ],
          const SizedBox(height: 24),
          ElevatedButton(
            onPressed: _handleSignup,
            style: ElevatedButton.styleFrom(
                minimumSize: const Size(double.infinity, 48)),
            child: const Text('Sign Up'),
          ),
        ],
      ),
    );
  }
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.only(top: 32, left: 16, right: 16),
      children: [
        Row(
          children: const [
            CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/profile.jpg'),
            ),
            SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("Shugri Idris",
                    style:
                        TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                Text("Researcher", style: TextStyle(color: Colors.grey)),
              ],
            ),
          ],
        ),
        const SizedBox(height: 16),
        const Text(
          "I am a researcher focused on natural language processing and speech recognition.",
          style: TextStyle(fontSize: 14),
        ),
        const SizedBox(height: 16),
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text("6 datasets"),
            Text("1K likes"),
            Text("800 downloads"),
          ],
        ),
        const SizedBox(height: 24),
        const Text("Datasets",
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
        const SizedBox(height: 12),
        _datasetCard("Somali Text Dataset", "Lorem ipsum dolor sit amet...",
            "100K examples", "1201 likes"),
        _datasetCard("Somali Image Collection", "Lorem ipsum dolor sit amet...",
            "50K images", "170 likes"),
        _datasetCard("Somali Speech Corpus", "Lorem ipsum dolor sit amet...",
            "85K audio files", "110 likes"),
        _datasetCard("Somali Video Dataset", "Lorem ipsum dolor sit amet...",
            "200K video files", "300 likes"),
        _datasetCard("Somali Text Dataset", "Lorem ipsum dolor sit amet...",
            "100K examples", "1201 likes"),
        _datasetCard("Somali Image Collection", "Lorem ipsum dolor sit amet...",
            "50K images", "170 likes"),
        _datasetCard("Somali Speech Corpus", "Lorem ipsum dolor sit amet...",
            "85K audio files", "110 likes"),
        _datasetCard("Somali Video Dataset", "Lorem ipsum dolor sit amet...",
            "200K video files", "300 likes"),
        _datasetCard("Somali Text Dataset", "Lorem ipsum dolor sit amet...",
            "100K examples", "1201 likes"),
        _datasetCard("Somali Image Collection", "Lorem ipsum dolor sit amet...",
            "50K images", "170 likes"),
        _datasetCard("Somali Speech Corpus", "Lorem ipsum dolor sit amet...",
            "85K audio files", "110 likes"),
        _datasetCard("Somali Video Dataset", "Lorem ipsum dolor sit amet...",
            "200K video files", "300 likes"),
      ],
    );
  }

  static Widget _datasetCard(
      String title, String desc, String stat1, String stat2) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey.shade300),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(desc, style: const TextStyle(color: Colors.grey)),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(stat1),
              Text(stat2),
            ],
          )
        ],
      ),
    );
  }
}
