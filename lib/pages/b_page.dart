import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/services/web_analytics_service.dart';

import 'package:vvd_ad/utils/colors.dart';
import '../utils/typos.dart';
import '../widgets/expandable_faq_widget.dart';
import 'dart:html' as html;

class BPage extends StatefulWidget {
  static const bool showLogoOverlay = true;

  @override
  State<BPage> createState() => _BPageState();
}

class _BPageState extends State<BPage> {
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
                                  'https://images.vvd-health.com/back-office/admin/banner/ae2f7675-0bf4-4453-b4f4-0d9bd4f6e834-99952366-35ef-4bff-90ca-47a4f19a8b51.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/c3f46e53-5cd1-49d8-8a09-7123b3b7a5b9-2f41dc47-79f9-402f-bb8d-c2ecfd4185bd.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/ebabb3a6-5b96-481a-a9e1-0c123d218135-859743b4-fe3d-4533-9a61-679ea475f3d4.png'),
                        ),
                        InkWell(
                          onTap: () async {
                            final String urlString =
                                'https://youtube.com/shorts/BC5YDStwF4A?feature=share';

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
                                    'https://images.vvd-health.com/back-office/admin/banner/6a6f7249-6022-47da-9c24-271f7aeefe88-69c77dc1-e0ca-4d13-9ec5-b53f23767210.png'),
                          ),
                        ),
                        SizedBox(height: 100),
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
