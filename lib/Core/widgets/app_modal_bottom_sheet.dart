import 'package:flutter/material.dart';

void showAppBottomSheet({
  required BuildContext context,
  required WidgetBuilder builder,
  bool? isScrollControlled,
  bool? isDismissible,
  bool? useRootNavigator,
  ShapeBorder? shape,
  Color? backgroundColor,
}) {
  showModalBottomSheet(
    context: context,
    isDismissible: isDismissible ?? true,
    isScrollControlled: isScrollControlled ?? false,
    useRootNavigator: useRootNavigator ?? false,
    backgroundColor: backgroundColor ?? Theme.of(context).cardColor,
    shape: shape,
    builder: builder,
  );
}
