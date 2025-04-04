// import 'package:flutter/material.dart';

// class Homepage extends StatelessWidget {
//   const Homepage({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text("This is app bar"),
//         centerTitle: true,
//         backgroundColor: Colors.red,
//       ),
//       body: Center(
//         child: Container(
//           width: 300,
//           height: 500,
//           decoration: BoxDecoration(
//             color: Colors.orange,
//             borderRadius: BorderRadius.only(
//               bottomRight: Radius.circular(100),
//               topLeft: Radius.circular(100),
//             ),
//             border: Border.all(color: Colors.green, width: 15),
//           ),
//           alignment: Alignment.center,
//           child: Text(
//             "Hello This is flutter.",
//             style: TextStyle(color: Colors.white, fontSize: 26),
//           ),
//         ),
//         // child: Text(
//         //   "Hello World !",
//         //   style: TextStyle(
//         //     fontSize: 25,
//         //     color: Colors.blue,
//         //     fontWeight: FontWeight.w600,
//         //     letterSpacing: 5,
//         //     wordSpacing: 3,
//         //   ),
//         // ),
//       ),
//     );
//   }
// }
import 'package:flutter/material.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First flutter project"),
        centerTitle: true,
        backgroundColor: Colors.red,
      ),
      body: Center(
        child: Container(
          width: 300,
          height: 500,
          padding: EdgeInsets.all(15),
          decoration: BoxDecoration(
            color: Colors.orange,
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(100),
              topLeft: Radius.circular(100),
            ),
            border: Border.all(color: Colors.green, width: 15),
          ),
          alignment: Alignment.center,
          child: Text(
            "This is child class",
            style: TextStyle(color: Colors.white, fontSize: 28),
          ),
        ),
      ),
    );
  }
}
