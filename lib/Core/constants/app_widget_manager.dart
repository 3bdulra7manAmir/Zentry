// import 'sizes_manager.dart';
// import 'package:flutter/widgets.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';

// extension WidgetPaddingX on Widget {
//   List<Widget> operator *(times) => List.generate(times, (index) => this);

//   Widget paddingAll(double padding) =>
//       Padding(padding: EdgeInsets.all(padding), child: this);

//   Widget paddingSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
//       Padding(
//         padding: EdgeInsets.symmetric(
//           horizontal: horizontal,
//           vertical: vertical,
//         ),
//         child: this,
//       );

//   Widget paddingOnly({
//     double left = 0.0,
//     double top = 0.0,
//     double right = 0.0,
//     double bottom = 0.0,
//   }) =>
//       Padding(
//         padding:
//             EdgeInsets.only(top: top, left: left, right: right, bottom: bottom),
//         child: this,
//       );

//   Widget paddingDirectionalOnly({
//     double top = 0.0,
//     double end = 0.0,
//     double start = 0.0,
//     double bottom = 0.0,
//   }) =>
//       Padding(
//         padding: EdgeInsetsDirectional.only(
//             top: top, start: start, end: end, bottom: bottom),
//         child: this,
//       );

//   Widget get defaultHorizontalScreenPadding => Padding(
//         padding: EdgeInsets.symmetric(horizontal: Sizes.size24.w),
//         child: this,
//       );

//   Widget get verticalScreenPadding => Padding(
//         padding: EdgeInsets.symmetric(vertical: Sizes.size16.h),
//         child: this,
//       );

//   Widget get defaultScreenPadding => Padding(
//         padding: EdgeInsets.symmetric(
//           vertical: Sizes.size16.h,
//           horizontal: Sizes.size24.w,
//         ),
//         child: this,
//       );
// }

// extension WidgetMarginX on Widget {
//   Widget marginAll(double margin) =>
//       Container(margin: EdgeInsets.all(margin), child: this);

//   Widget marginSymmetric({double horizontal = 0.0, double vertical = 0.0}) =>
//       Container(
//           margin:
//               EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical),
//           child: this);

//   Widget marginOnly({
//     double left = 0.0,
//     double top = 0.0,
//     double right = 0.0,
//     double bottom = 0.0,
//   }) =>
//       Container(
//           margin: EdgeInsets.only(
//               top: top, left: left, right: right, bottom: bottom),
//           child: this);

//   Widget get marginZero => Container(margin: EdgeInsets.zero, child: this);
// }
