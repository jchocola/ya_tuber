import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/generated/l10n.dart';
import 'package:ya_tuber/widget/big_button.dart';
import 'package:ya_tuber/widget/setting_title.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppConstant.widgetPadding,
      children: [
        Text(S.of(context).about, style: theme.textTheme.titleMedium),
        Neumorphic(
          child: Padding(
            padding: EdgeInsets.all(AppConstant.widgetPadding),
            child: Column(
              spacing: AppConstant.widgetPadding,
              children: [
                _customTextWidget(
                  context,
                  title: S.of(context).appVersion,
                  value: AppConstant.appVerion,
                ),
                _customTextWidget(
                  context,
                  title: S.of(context).build,
                  value: AppConstant.buildDate,
                ),
                _customTextWidget(
                  context,
                  title: S.of(context).developer,
                  value: AppConstant.developer,
                ),

                Row(
                  spacing: AppConstant.widgetPadding,
                  children: [
                    Expanded(
                      child: BigButton(
                        title: S.of(context).termOfServices,
                        onPressed: () async {
                          if (!await launchUrl(
                            Uri.parse(AppConstant.termOfService),
                          )) {
                            throw Exception(
                              'Could not launch ${AppConstant.termOfService}',
                            );
                          }
                        },
                      ),
                    ),
                    Expanded(
                      child: BigButton(
                        isNegative: true,
                        title: S.of(context).privacyPolicy,
                        onPressed: () async {
                          if (!await launchUrl(
                            Uri.parse(AppConstant.privacyPolicy),
                          )) {
                            throw Exception(
                              'Could not launch ${AppConstant.privacyPolicy}',
                            );
                          }
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Widget _customTextWidget(
    BuildContext context, {
    String title = 'Title',
    String value = 'Value',
  }) {
    final theme = Theme.of(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(title, style: theme.textTheme.bodySmall),
        Text(value, style: theme.textTheme.bodyMedium),
      ],
    );
  }
}
