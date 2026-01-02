import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/services/web_analytics_service.dart';

import 'package:vvd_ad/utils/colors.dart';
import '../utils/typos.dart';
import '../widgets/expandable_faq_widget.dart';
import 'dart:html' as html;

class ReviewPage extends StatefulWidget {
  static const bool showLogoOverlay = true;

  @override
  State<ReviewPage> createState() => _ReviewPageState();
}

class _ReviewPageState extends State<ReviewPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SafeArea(
            child: CustomScrollView(
              slivers: [
                SliverToBoxAdapter(
                  child: Container(
                    color: BLUE_50,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/f7ca575a-2fdf-4a32-a607-09ba7a420c2f-f5c68ac4-fc7e-47be-acab-8cf91b8e7d39.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/04a94bf9-430f-4306-aa31-b9ae17034f94-f53c0d7b-4971-4a73-a225-d24447c54f64.png'),
                        ),
                        InkWell(
                          onTap: () async {
                            WebAnalyticsService.logButtonClick(
                              buttonName: '리뷰 이벤트 신청',
                              pageName: 'ReviewPage',
                            );

                            final String urlString =
                                'https://tally.so/r/3NkE1b';

                            if (kIsWeb) {
                              // 웹뷰에서는 JavaScript window.open 사용
                              html.window.open(urlString, '_blank');
                            } else {
                              // 네이티브 앱에서는 url_launcher 사용
                              final Uri url = Uri.parse(urlString);
                              if (await canLaunchUrl(url)) {
                                await launchUrl(url,
                                    mode: LaunchMode.externalApplication);
                              } else {
                                // 에러 처리
                                if (context.mounted) {
                                  ScaffoldMessenger.of(context).showSnackBar(
                                    const SnackBar(
                                      content: Text('링크를 열 수 없습니다.'),
                                    ),
                                  );
                                }
                              }
                            }
                          },
                          child: SizedBox(
                            width: double.infinity,
                            child: CachedNetworkImage(
                                imageUrl:
                                    'https://images.vvd-health.com/back-office/admin/banner/92984088-40da-4538-ac27-b0fdec169c2b-948ea5d9-e527-401e-b0c0-b4b8bc618af4.png'),
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/47f694ec-97bf-4d74-817b-94174e46c657-0b1df550-54ac-40bd-ba6e-113e5fa019a6.png'),
                        ),
                        SizedBox(height: 40),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
