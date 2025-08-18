import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:vvd_ad/utils/typos.dart';
import '../utils/colors.dart';
import '../utils/meta_tags.dart';

class PrescriptionPage extends StatefulWidget {
  const PrescriptionPage({Key? key}) : super(key: key);

  @override
  State<PrescriptionPage> createState() => _PrescriptionPageState();
}

class _PrescriptionPageState extends State<PrescriptionPage> {
  @override
  void initState() {
    super.initState();
    // Update meta tags when page loads
    MetaTags.updateMetaTags(
      title: '다이어트 주사 처방 가이드ㅣ삐약 어플',
      description: '어디 병원을 가야되나요? 아무데서나 처방받을 수 있나요?',
      keywords:
          '다이어트 주사, 다이어트 주사 처방, 다이어트 주사 병원, 다이어트 주사 약국, 위고비 처방, 마운자로 처방, 삭센다 처방, GLP-1 처방, 비만 치료 병원, 비만 클리닉, 다이어트 병원, 삐약, 위고비 병원 추천, 마운자로 병원 추천, 비만약 처방',
      imageUrl: 'https://ad.vvd-health.com/asset/og_image_prescription.png',
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
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                AspectRatio(
                  aspectRatio: 360 / 640, // 모바일 비율
                  child: CachedNetworkImage(
                    imageUrl:
                        'https://vivid-bucket-real.s3.ap-northeast-2.amazonaws.com/back-office/admin/banner/807830c4-92a5-4d8c-8433-f897b6eee2f1-56c81c5a-f69a-4022-82fe-5123f2051b80.png',
                    fit: BoxFit.cover,
                    placeholder: (context, url) => Container(
                      color: Colors.grey[100],
                      child: const Center(
                        child: CircularProgressIndicator(),
                      ),
                    ),
                    errorWidget: (context, url, error) {
                      return Container(
                        color: Colors.grey[200],
                        child: const Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.image_not_supported,
                                  size: 48, color: Colors.grey),
                              SizedBox(height: 8),
                              Text('이미지를 불러올 수 없습니다'),
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ],
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
                    '다이어트 주사 병원,약국 찾기',
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
