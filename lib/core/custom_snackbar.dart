// ignore_for_file: constant_identifier_names, camel_case_types

import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/core/app_icon.dart';

enum SNACKBAR_TYPE { ERROR, SUCCESS, WARNING }

void showCustomSnackbar(
  BuildContext context, {
  String content = 'Content',
  SNACKBAR_TYPE type = SNACKBAR_TYPE.WARNING,
}) {
  ScaffoldMessenger.of(context).showSnackBar(
    SnackBar(
      backgroundColor: Colors.transparent,
      content: Padding(
        padding: EdgeInsets.all(AppConstant.widgetPadding),
        child: Row(
          spacing: AppConstant.widgetPadding,
          children: [_icon(type: type), Expanded(child: Text(content))]),
      ),
    ),
  );


}

class _icon extends StatelessWidget {
  const _icon({super.key, required this.type});
  final SNACKBAR_TYPE type;
  @override
  Widget build(BuildContext context) {
    return Icon(_getIcon(type), color: _getColor(type));
  }
}

IconData _getIcon(SNACKBAR_TYPE type) {
  switch (type) {
    case SNACKBAR_TYPE.SUCCESS:
      return AppIcon.successIcon;
    case SNACKBAR_TYPE.ERROR:
      return AppIcon.errorIcon;
    case SNACKBAR_TYPE.WARNING:
      return AppIcon.warningIcon;
  }
}

Color _getColor(SNACKBAR_TYPE type) {
  switch (type) {
    case SNACKBAR_TYPE.SUCCESS:
      return Colors.greenAccent;
    case SNACKBAR_TYPE.ERROR:
      return Colors.red;
    case SNACKBAR_TYPE.WARNING:
      return Colors.orange;
  }
}
