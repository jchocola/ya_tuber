import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:provider/provider.dart';
import 'package:ya_tuber/app_setting_provider.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/generated/l10n.dart';
import 'package:ya_tuber/widget/custom_text_button.dart';
import 'package:ya_tuber/widget/setting_title.dart';

class AppareanceWidget extends StatelessWidget {
  const AppareanceWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final appSettingProvider_listen = context.watch<AppSettingProvider>();
    final appSettingProvider_read = context.read<AppSettingProvider>();

    void onLanguageTapped() {
      showDialog(
        context: context,
        builder: (context) => Dialog(
          child: Neumorphic(
            child: Padding(
              padding: EdgeInsets.all(AppConstant.widgetPadding),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                spacing: AppConstant.appPadding,
                children: [
                  Text('Language'),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(
                      S.delegate.supportedLocales.length,
                      (index) {
                        final Locale locale =
                            S.delegate.supportedLocales[index];
                        return CustomTextButton(
                          text: locale.languageCode,
                          onPressed: () async {
                            await appSettingProvider_read.changeAppLangCode(
                              langCode: locale.languageCode,
                            );
                          },
                          isNegative:
                              locale.languageCode ==
                              appSettingProvider_listen.langCode,
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      );
    }

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppConstant.widgetPadding,
      children: [
        Text('Appearance'),
        SettingTitle(
          title: 'Theme',
          //withSwitch: true,
          //switchValue: appSettingProvider_listen.appTheme,
          onPressed: () async {
            await appSettingProvider_read.tooggleThemeValue();
          },
          subTitle: appSettingProvider_listen.appTheme,
        ),
        SettingTitle(
          title: 'Language',
          onPressed: onLanguageTapped,
          subTitle: appSettingProvider_listen.langCode,
        ),
      ],
    );
  }
}
