// import 'package:flutter/material.dart';
// import 'package:percent_indicator/circular_percent_indicator.dart';

// import '../../utils/color_resource.dart';
// import '../../utils/image_resource.dart';
// import '../../utils/string_resource.dart';
// import '../../widgets/button/primary_button.dart';
// import '../../widgets/custom_text.dart';

// class Consent extends StatefulWidget {
//   const Consent({super.key});

//   @override
//   State<Consent> createState() => _ConsentState();
// }

// class _ConsentState extends State<Consent> {
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         flexibleSpace: Container(
//           decoration: const BoxDecoration(
//             gradient: LinearGradient(
//               begin: Alignment.centerLeft,
//               end: Alignment.topRight,
//               colors: <Color>[
//                 Colorresource.color06E305,
//                 Colorresource.color00ACE1,
//                 Colorresource.color06E305,
//               ],
//             ),
//           ),
//         ),
//         title: Row(
//           mainAxisAlignment: MainAxisAlignment.start,
//           children: [
//             Image.asset(
//               Imageresource.backArrow,
//               width: 36,
//               height: 36,
//             ),
//             const SizedBox(
//               width: 10,
//             ),
//             CustomText(StringResource.before),
//             // const _progressindicator()
//           ],
//         ),
//         actions: const [
//           Padding(
//             padding: EdgeInsets.only(right: 10),
//             child: _progressindicator(),
//           )
//         ],
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16),
//         child: Column(
//           children: [
//             const Padding(
//               padding: EdgeInsets.symmetric(vertical: 30),
//               child: framehead(),
//             ),
//             const diveded(),
//             const SizedBox(
//               height: 50,
//             ),
//             const frame11(),
//             const SizedBox(
//               height: 25,
//             ),
//             const diveded(),
//             const SizedBox(
//               height: 25,
//             ),
//             const frame12(),
//             const SizedBox(
//               height: 25,
//             ),
//             const diveded(),
//             const SizedBox(
//               height: 25,
//             ),
//             const fram13(),
//             const SizedBox(
//               height: 25,
//             ),
//             const SizedBox(
//               height: 105,
//             ),
//             PrimaryButton(
//                 StringResource.startverify,
//                 const LinearGradient(
//                     colors: [
//                       Colorresource.color06E305,
//                       Colorresource.color00ACE1,
//                     ],
//                     begin: Alignment.topLeft,
//                     end: Alignment.bottomRight,
//                     transform: GradientRotation(118.31)),
//                 onClick: () {})
//           ],
//         ),
//       ),
//     );
//   }
// }

// // ignore: camel_case_types
// class diveded extends StatelessWidget {
//   const diveded({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return const Divider(
//       thickness: 2,
//       color: Colorresource.colorE9EAEB,
//       height: 2,
//     );
//   }
// }

// // ignore: camel_case_types
// class framehead extends StatelessWidget {
//   const framehead({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Container(
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.start,
//             children: [
//               Row(
//                 children: [
//                   CustomText(
//                     StringResource.fast,
//                     color: Colorresource.color211B2D,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ],
//               ),
//               const SizedBox(
//                 height: 10,
//               ),
//               Row(
//                 children: [
//                   CustomText(
//                     StringResource.complete,
//                     color: Colorresource.color211B2D,
//                     fontWeight: FontWeight.w400,
//                   ),
//                 ],
//               ),
//             ],
//           ),
//         ),
//         const SizedBox(
//           width: 40,
//         ),
//         Image.asset(
//           Imageresource.clock,
//           width: 90,
//           height: 90,
//         ),
//       ],
//     );
//   }
// }

// // ignore: camel_case_types
// class frame11 extends StatelessWidget {
//   const frame11({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Image.asset(
//           Imageresource.frame3,
//           width: 60,
//           height: 60,
//         ),
//         const SizedBox(
//           width: 20,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 CustomText(
//                   StringResource.step1,
//                   color: Colorresource.color211B2D,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 20,
//             ),
//             Row(
//               children: [
//                 CustomText(
//                   StringResource.step11,
//                   color: Colorresource.color211B2D,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// // ignore: camel_case_types
// class frame12 extends StatelessWidget {
//   const frame12({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Image.asset(
//           Imageresource.frame1,
//           width: 60,
//           height: 60,
//         ),
//         const SizedBox(
//           width: 20,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 CustomText(
//                   StringResource.step2,
//                   color: Colorresource.color211B2D,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 CustomText(
//                   StringResource.step22,
//                   color: Colorresource.color211B2D,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// // ignore: camel_case_types
// class fram13 extends StatelessWidget {
//   const fram13({
//     super.key,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       children: [
//         Image.asset(
//           Imageresource.frame2,
//           width: 60,
//           height: 60,
//         ),
//         const SizedBox(
//           width: 20,
//         ),
//         Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: [
//             Row(
//               children: [
//                 CustomText(
//                   StringResource.step3,
//                   color: Colorresource.color211B2D,
//                   fontWeight: FontWeight.bold,
//                 ),
//               ],
//             ),
//             const SizedBox(
//               height: 10,
//             ),
//             Row(
//               children: [
//                 CustomText(
//                   StringResource.step33,
//                   color: Colorresource.color211B2D,
//                   fontWeight: FontWeight.w400,
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ],
//     );
//   }
// }

// // ignore: camel_case_types
// class _progressindicator extends StatelessWidget {
//   const _progressindicator();

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//         padding: const EdgeInsets.all(4),
//         child: CircularPercentIndicator(
//           radius: 10,
//           lineWidth: 3.0,
//           animation: true,
//           percent: 40 / 100,
//           backgroundColor: Colors.black12,
//           circularStrokeCap: CircularStrokeCap.round,
//           progressColor: Colorresource.white,
//         ));
//   }
// }
