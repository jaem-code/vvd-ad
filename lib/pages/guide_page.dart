import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/utils/typos.dart';

import '../utils/colors.dart';
import '../utils/meta_tags.dart';

class GuidePage extends StatefulWidget {
  @override
  State<GuidePage> createState() => _GuidePageState();
}

class _GuidePageState extends State<GuidePage> {
  @override
  void initState() {
    super.initState();
    // Update meta tags when page loads
    MetaTags.updateMetaTags(
      title: '용량 & 나눠맞기 질문 총정리ㅣ삐약 어플',
      description: '고용량 주사해도 되나요? 나눠맞기 칸수는 어떤 기준으로 세나요?',
      keywords:
          '삐약, 용량계산, 나눠맞기, 의료 어플, 약 용량, 의료 커뮤니티, 건강 정보, 위고비, 마운자로, 비만치료제, 위고비 가격, 마운자로 가격, GLP-1 주사, 위고비 병원, 마운자로 병원, 위고비 갤, 세마글루타이드, 티르제파타이드',
      imageUrl: 'https://ad.vvd-health.com/asset/og_image_guide.png',
    );
  }

  Future<void> _launchURL() async {
    final Uri url = Uri.parse('https://deeplink.vvd-health.com/');
    if (!await launchUrl(url, mode: LaunchMode.externalApplication)) {
      throw Exception('Could not launch $url');
    }
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
                    color: Colors.white,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/8f8aacd4-9e98-42ea-8680-fb01770848a4-ee95faea-b60b-49d0-a8a2-4929e4d7f226.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/15409fe7-c5e2-4211-a13f-b396ecc5db51-75247739-5cfb-48bf-8fc4-6f997e3b1e2c.png'),
                        ),
                        SizedBox(height: 100), // 버튼 공간 확보
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          // 플로팅 버튼을 Stack으로 구현
          Positioned(
            left: 16,
            right: 16,
            bottom: 8,
            child: SizedBox(
              width: 328,
              height: 60,
              child: ElevatedButton(
                onPressed: _launchURL,
                style: ElevatedButton.styleFrom(
                  backgroundColor: YELLOW_600,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  '커뮤니티 인기글 더보기',
                  style: T1_Bold.copyWith(
                    color: BLUE_50,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
