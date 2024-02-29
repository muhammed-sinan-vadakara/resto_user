// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';

// class AppBarWidget extends StatelessWidget {
//   final String title;
//   final String? actionButtonName;
//   final Function()? onPressed;
//   const AppBarWidget({super.key, required this.title, this.actionButtonName,this.onPressed});

//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: appTheme.colors.secondary,
//       automaticallyImplyLeading: false,
//       scrolledUnderElevation: 0,
//       elevation: 0,
//       titleSpacing: appTheme.spaces.space_300,
//       title: Transform.translate(
//         offset: Offset(-appTheme.spaces.space_200, 0),
//         child: Row(
//           mainAxisSize: MainAxisSize.min,
//           children: [
//             Ink(
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(appTheme.spaces.space_100),
//                 onTap: () => context.pop(),
//                 child: Padding(
//                   padding: EdgeInsets.all(appTheme.spaces.space_200),
//                   child: SvgPicture.asset(
//                     assets.icArrowBackward,
//                     height: appTheme.spaces.space_200,
//                     colorFilter: ColorFilter.mode(
//                         appTheme.colors.text, BlendMode.srcATop),
//                   ),
//                 ),
//               ),
//             ),
//             SizedBox(
//               width: appTheme.spaces.space_100,
//             ),
//             Text(
//               title,
//               style: appTheme.typography.h600,
//             )
//           ],
//         ),
//       ),
//       actions: [
//         Transform.translate(
//           offset: Offset(appTheme.spaces.space_100, 0),
//           child: Padding(
//             padding: EdgeInsets.only(right: appTheme.spaces.space_300),
//             child: Ink(
//               height: appTheme.spaces.space_500,
//               child: InkWell(
//                 borderRadius: BorderRadius.circular(appTheme.spaces.space_100),
//                 onTap: onPressed,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                       horizontal: appTheme.spaces.space_100),
//                   child: Center(
//                     child: Text(
//                       actionButtonName ?? '',
//                       style: appTheme.typography.h600.copyWith(
//                         color: appTheme.colors.primary,
//                       ),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         )
//       ],
//     );
//     ;
//   }
// }
