// import 'package:flutter/material.dart';

// class NormalScreen extends StatefulWidget {
//   const NormalScreen({super.key});

//   @override
//   State<NormalScreen> createState() => _NormalScreenState();
// }

// class _NormalScreenState extends State<NormalScreen> {
//   int number = 0;
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(title: Text("state management")),
//       body: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//           Text("$number"),
//           ElevatedButton(
//             onPressed: () {
//               setState(() {
//                 number++;
//               });
//             },
//             child: Text("add"),
//           ),
//         ],
//       ),
//     );
//   }
// }

// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:get/get_core/src/get_main.dart';
// import 'package:youtube/controller/count_controller.dart';

// final mycontroller = Get.put(normalcontroller());

// class NormalScreen extends StatelessWidget {
//   const NormalScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Obx(
//         () => Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             Obx(() => Text("${mycontroller.count}")),
//             ElevatedButton(
//               onPressed: () {
//                 mycontroller.add();
//               },
//               child: Text("add getx"),
//             ),
//             Obx(() => Text("${mycontroller.msg}")),
//             OutlinedButton(
//               onPressed: mycontroller.updAte,
//               child: Text("Update"),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }
