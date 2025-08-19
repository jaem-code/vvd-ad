import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:vvd_ad/utils/typos.dart';
import '../utils/colors.dart';
import '../utils/meta_tags.dart';

class PrescriptionPage extends StatefulWidget {
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
                                  'https://images.vvd-health.com/back-office/admin/banner/d86e65e4-c798-4b2d-a1ad-e8fdf1169219-6ff69adc-e501-41aa-bc59-0c87ed37db92.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/5ee94781-8e4a-4ac2-8228-d61c1c5cb983-091595d8-aa9f-45ce-88af-2175c3149c21.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/10447503-ef44-441b-9dca-f414ee67d192-4f1f59f9-fed0-4b87-bdb7-5e969c14ecd2.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/a28ff319-900f-462e-991b-7e9bcaadc7de-4eb487ab-8592-46ac-9472-11190be51e8c.png'),
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
