// // import 'package:flutter/material.dart';
// // import 'dart:convert';
// // import 'package:http/http.dart' as http;
// // import '../model/users_model.dart';

// // class UsersScreen extends StatefulWidget {
// //   const UsersScreen({super.key});

// //   @override
// //   State<UsersScreen> createState() => _UsersScreenState();
// // }

// // class _UsersScreenState extends State<UsersScreen> {
// //   List<User> users = [];
// //   bool isloading = false;
// //   Future<void> fetchUsers() async{
// //     setState(() {
// //       isloading = true;
// //     });

// //     final response = await http.get(Uri.parse('https://jsonplaceholder.typicode.com/users/'));

// //     //404
// //     //505
// //     //200
// //     if(response.statusCode == 200) {
// //       List<dynamic> jsonData = json.decode(response.body);
// //       setState(() {
// //         users = jsonData.map((json) => User.fromjson(json)).toList();
// //       });
// //     }
// //   }

// //   @override
// //   void initState() {
// //     fetchUsers();
// //     super.initState();
// //   }

// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: isloading ? Center(
// //         child: CircularProgressIndicator(),):
// //         ListView.builder(
// //           itemCount: users.length,
// //           itemBuilder: (context, index)
// //           {
// //             User user = users[index];

// //             return ListTile(
// //               title: Text(user.name),
// //               subtitle: Text(user.email),
// //             );
// //           }),
// //     );
// //   }
// // }
// import 'package:flutter/material.dart';
// import 'package:modelhander/controller/users_controller.dart';
// import 'package:modelhander/model/users_model.dart';

// class UsersScreen extends StatefulWidget {
//   const UsersScreen({super.key});

//   @override
//   State<UsersScreen> createState() => _UsersScreenState();
// }

// class _UsersScreenState extends State<UsersScreen> {
//   final controller = UserController();
//   List<User> users = [];
//   final namecontroller = TextEditingController();
//   final emailcontroller = TextEditingController();


//   //loaduser
//   void loaduser()async{
//     final userdata = await controller.getUsers();
//     setState(() {
//       users = userdata;
//     });
//   }

//   //add user to supabase
//   void adduser()async{
//     if (namecontroller.text.isEmpty || emailcontroller.text.isEmpty) {
//       return;
// //     }
// //     else {
// //       final user = User(name: namecontroller.text, email: emailcontroller.text);
// //       await controller.addUser(user);
// //       namecontroller.clear();
// //       emailcontroller.clear();
// //     }
// //   }


// //   //delete user from supabase
// //   void deleteuser(int id)async{
// //     await controller.deleteUser(id);
// //     loaduser();
// //   }

  
// //   //initstate
// // @override
// //   void initState() {
// //     // TODO: implement initState
// //     super.initState();
// //     loaduser();
// //   }





// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Column(
// //         children: [
// //           //form
// //           //name
// //           TextField(
// //             controller: namecontroller,
// //             decoration: InputDecoration(label: Text('Enter your name')),
// //           ),
// //           //EMAIL
// //           TextField(
// //             controller: emailcontroller,
// //             decoration: InputDecoration(label: Text('Enter your email')),
// //           ),

// //           SizedBox(height: 10),
// //           //BUTTON
// //           ElevatedButton(onPressed: () {
// //             adduser();
            
// //           }, child: Text('Add User')),

// //           //LIST OF USER
// //           Expanded(
// //             child: ListView.builder(
// //               itemCount: users.length,
// //               itemBuilder: (context, index) {
// //                 final user = users[index];
// //                 return ListTile(
// //                   title: Text(user.name),
// //                   subtitle: Text(user.email),
// //                   trailing: IconButton(
// //                     onPressed: () {
// //                       deleteuser(user.id!);
// //                     },
// //                     icon: Icon(Icons.delete),
// //                   ),
// //                 );
// //               },
// //             ),
// //           ),
// //         ],
// //       ),
// //     );
// //   }
// // }






