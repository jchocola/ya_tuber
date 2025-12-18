import 'package:flutter/material.dart';
import 'package:flutter_neumorphic_plus/flutter_neumorphic.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:ya_tuber/core/app_constant.dart';
import 'package:ya_tuber/widget/big_button.dart';
import 'package:ya_tuber/widget/setting_title.dart';

class AboutWidget extends StatelessWidget {
  const AboutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: AppConstant.widgetPadding,
      children: [
        Text('About'),
        Neumorphic(
         
          child: Padding(
            padding: EdgeInsets.all(AppConstant.widgetPadding),
            child: Column(
              spacing: AppConstant.widgetPadding,
              children: [
                _customTextWidget(
                  context,
                  title: 'App Version',
                  value: '1.0.0',
                ),
                _customTextWidget(context, title: 'Build', value: '20.22.2032'),
                _customTextWidget(
                  context,
                  title: 'Developer',
                  value: 'Nguen T.B',
                ),

                Row(
                  spacing: AppConstant.widgetPadding,
                  children: [
                    Expanded(
                      child: BigButton(
                        
                        title: 'Term of Services', onPressed: () async{
                         if (!await launchUrl(
                            Uri.parse(AppConstant.termOfService),
                          )) {
                            throw Exception(
                              'Could not launch ${AppConstant.termOfService}',
                            );
                          }
                      }),
                    ),
                    Expanded(
                      child: BigButton(
                        isNegative: true,
                        title: 'Privacy Policy',
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
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [Text(title), Text(value)],
    );
  }
}
