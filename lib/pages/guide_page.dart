import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:vvd_ad/utils/typos.dart';
import '../utils/colors.dart';
import '../utils/meta_tags.dart';

class GuidePage extends StatefulWidget {
  const GuidePage({Key? key}) : super(key: key);

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
      backgroundColor: Colors.white,
      body: Column(
        children: [
          Expanded(
            child: SingleChildScrollView(
              padding: EdgeInsets.zero,
              child: Column(
                children: [
                  SizedBox(
                    width: double.infinity,
                    child: CachedNetworkImage(
                      imageUrl:
                          'https://vivid-bucket-real.s3.ap-northeast-2.amazonaws.com/back-office/admin/banner/33796856-4b79-4785-94f5-f9813446084c-2fbe405d-0f6a-4215-aade-bbe9da113b79.png',
                    ),
                  ),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.1),
                  offset: Offset(0, -2),
                  blurRadius: 4,
                ),
              ],
            ),
            child: Center(
              child: SizedBox(
                width: 328,
                height: 64,
                child: ElevatedButton(
                  onPressed: _launchURL,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: YELLOW_600,
                    foregroundColor: BLUE_50,
                    padding: const EdgeInsets.symmetric(vertical: 18),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 4,
                  ),
                  child: Text(
                    '커뮤니티 인기글 더보기',
                    style: T1_Bold.copyWith(color: BLUE_50),
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
