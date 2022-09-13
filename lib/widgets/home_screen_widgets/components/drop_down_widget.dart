// import 'package:flutter/material.dart';

// // Widget customDropDown(List<String> item, String value, void onChange(val)) {
// //   return Container(
// //     child: DropdownButton<String>(
// //       value: value,
// //       onChanged: (value) {
// //         onChange(val);
// //       },
// //       items: item.map<DropdownMenuItem<String>>((String val) {
// //         return DropdownMenuItem(
// //           child: Text('val'),
// //           value: val,
// //         );
// //       }).toList(),
// //     ),
// //   );
// // }

// Widget customDropDown(List<String> item, String value, void onChange(val)) {
//   return Container(
//     padding: EdgeInsets.symmetric(vertical: 4.0, horizontal: 18.0),
//     decoration: BoxDecoration(
//       color: Colors.white,
//       borderRadius: BorderRadiusDirectional.circular(8.0),
//     ),
//     child: DropdownButton<String>(
//       value: value,
//       onChanged: (value) {
//         onChange(value);
//       },
//       items: item.map<DropdownMenuItem<String>>((String val) {
//         return DropdownMenuItem(
//           child: Text('val'),
//           value: value,
//         );
//       }).toList(),
//     ),
//   );
// }
