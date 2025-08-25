import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/utils/typos.dart';

import '../utils/colors.dart';
import '../utils/meta_tags.dart';

class PricePage extends StatefulWidget {
  @override
  State<PricePage> createState() => _PricePageState();
}

class _PricePageState extends State<PricePage> {
  @override
  void initState() {
    super.initState();
    // Update meta tags when page loads
    MetaTags.updateMetaTags(
      title: '다이어트 주사 평균 가격ㅣ삐약 어플',
      description: '전국 평균가격, 병원 약국 정보 찾기',
      keywords:
          '다이어트 주사, 다이어트 주사 가격, 다이어트 주사 병원, 다이어트 주사 약국, 위고비 가격, 마운자로 가격, 삭센다 가격, GLP-1 가격, 비만 치료 병원, 비만 클리닉, 다이어트 병원, 삐약, 위고비 병원 추천, 마운자로 병원 추천, 비만약 가격',
      imageUrl:
          'https://images.vvd-health.com/back-office/admin/banner/80d11cb2-ee5c-412b-b810-22e387f926dd-ddaba05f-a2e7-40a2-9d18-37a5b39ca240.png',
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
                                  'https://images.vvd-health.com/back-office/admin/banner/2fbb4c97-9605-45d0-b2de-7d984814b80a-b72b417f-3a5f-4cf9-8a87-e311ae81b8bc.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/4f9ab019-4b4f-44ee-a299-b3390ca33fa8-d5a49f82-59c5-423b-90ec-6ed998072cf4.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/70c1dcba-ff98-400f-829d-326f8629f770-c531ba44-4bd3-4542-b6fd-21d6cf6bf6c8.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/667703d7-4c40-4802-9dbc-5ff10a8c0c2c-b01fb091-7745-459b-9c0a-a567a410e9a0.png'),
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
            bottom: 12,
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
                  '다이어트 주사 병원,약국 찾기',
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
