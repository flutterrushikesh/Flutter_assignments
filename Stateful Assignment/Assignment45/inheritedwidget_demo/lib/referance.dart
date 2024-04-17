// import 'package:flutter/material.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//   @override
//   Widget build(BuildContext context) {
//     return const SharedData(
//       data: 50,
//       child: MaterialApp(
//         home: MainApp(),
//       ),
//     );
//   }
// }

// class MainApp extends StatefulWidget {
//   const MainApp({super.key});
//   @override
//   State<MainApp> createState() => _MainAppState();
// }

// class _MainAppState extends State<MainApp> {
//   @override
//   Widget build(BuildContext context) {
//     SharedData sharedDataObj = SharedData.of(context);
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("InheritedWidget Demo"),
//         centerTitle: true,
//         backgroundColor: Colors.blue,
//       ),
//       body: Column(
//         children: [
//           Text(
//             "${sharedDataObj.data}",
//           ),
//           const SizedBox(
//             height: 20,
//           ),
// // const AccessdataWidget(),
//         ],
//       ),
//     );
//   }
// }

// class SharedData extends InheritedWidget {
//   final int data;
//   const SharedData({
//     super.key,
//     required this.data,
//     required super.child,
//   });
//   static SharedData of(BuildContext context) {
//     return context.dependOnInheritedWidgetOfExactType<SharedData>()!;
//   }

//   @override
//   bool updateShouldNotify(SharedData oldWidget) {
//     return data != oldWidget.data;
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:google_fonts/google_fonts.dart';
// import 'package:inherited_demo/inheritedwidget.dart';
// import 'skills.dart';

// void main() {
//   runApp(const MyApp());
// }

// class MyApp extends StatelessWidget {
//   const MyApp({super.key});

//   // This widget is the root of your application.
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       debugShowCheckedModeBanner: false,
//       title: 'Flutter Demo',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
//         useMaterial3: true,
//       ),
//       home: const SkillsPage(),
//     );
//   }
// }

// class HomePage extends StatefulWidget {
//   const HomePage({super.key});

//   @override
//   State<HomePage> createState() => _HomePageState();
// }

// class _HomePageState extends State<HomePage> {
//   final TextEditingController _id = TextEditingController();
//   final TextEditingController _username = TextEditingController();
//   final TextEditingController _name = TextEditingController();
//   final GlobalKey<FormFieldState> _idKey = GlobalKey();
//   final GlobalKey<FormFieldState> _usernameKey = GlobalKey();
//   final GlobalKey<FormFieldState> _nameKey = GlobalKey();
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//         appBar: AppBar(
//           title: const Text("InheritedDemo"),
//         ),
//         body: Padding(
//           padding: const EdgeInsets.all(15),
//           child: Column(
//             children: [
//               TextFormField(
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//                 key: _idKey,
//                 controller: _id,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     // borderSide: BorderSide.none,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   hintText: "Enter id",
//                   hintStyle: GoogleFonts.poppins(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               TextFormField(
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//                 key: _usernameKey,
//                 controller: _username,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     //  borderSide: BorderSide.none,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   hintText: "Enter Username",
//                   hintStyle: GoogleFonts.poppins(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               TextFormField(
//                 validator: (value) {
//                   if (value == null || value.isEmpty) {
//                     return 'Please enter some text';
//                   }
//                   return null;
//                 },
//                 key: _nameKey,
//                 controller: _name,
//                 decoration: InputDecoration(
//                   border: OutlineInputBorder(
//                     // borderSide: BorderSide.none,
//                     borderRadius: BorderRadius.circular(8),
//                   ),
//                   hintText: "Enter Name",
//                   hintStyle: GoogleFonts.poppins(
//                     fontWeight: FontWeight.w400,
//                     fontSize: 14,
//                   ),
//                 ),
//               ),
//               const SizedBox(
//                 height: 15,
//               ),
//               ElevatedButton(
//                   onPressed: () {
//                     bool idFlag = _idKey.currentState!.validate();
//                     bool usernameFlag = _usernameKey.currentState!.validate();
//                     bool nameFlag = _nameKey.currentState!.validate();
//                     if (nameFlag && usernameFlag && idFlag) {
//                       Navigator.push(
//                         context,
//                         MaterialPageRoute(
//                           builder: (context) {
//                             return EmployeeData(
//                                 id: _id.text,
//                                 username: _username.text,
//                                 name: _name.text,
//                                 child: const DisplayPage());
//                           },
//                         ),
//                       );
//                     }
//                   },
//                   child: const Text("Login")),
//             ],
//           ),
//         ));
//   }
// }

// class DisplayPage extends StatelessWidget {
//   const DisplayPage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text("Display Page"),
//         leading: IconButton(
//           icon: const Icon(Icons.arrow_back),
//           onPressed: () {
//             Navigator.of(context).pop();
//           },
//         ),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(20.0),
//         child: SizedBox(
//           width: double.infinity,
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               Text("id is- ${EmployeeData.of(context).id}"),
//               const SizedBox(
//                 height: 15,
//               ),
//               Text("username is- ${EmployeeData.of(context).username}"),
//               const SizedBox(
//                 height: 15,
//               ),
//               Text("Name is- ${EmployeeData.of(context).name}"),
//               const SizedBox(
//                 height: 15,
//               ),
//               ElevatedButton(onPressed: () {}, child: const Text("Add Skill"))
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
