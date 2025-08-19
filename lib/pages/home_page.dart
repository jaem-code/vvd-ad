import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';

import '../utils/colors.dart';
import '../utils/meta_tags.dart';
import '../utils/typos.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    // Reset to default meta tags when returning to home
    MetaTags.updateMetaTags(
      title: '국내 1위 다이어트 주사 앱 | 삐약',
      description: '국내 1위 다이어트 주사 플랫폼. 위고비, 마운자로 등 비만치료제 가격 비교 및 병원 정보 제공',
      keywords:
          '삐약, VVD Health, 의료 정보, 건강 관리, 위고비, 마운자로, 비만치료제, 위고비 가격, 마운자로 가격, GLP-1 주사, 위고비 병원, 마운자로 병원, 위고비 갤',
      imageUrl: 'https://ad.vvd-health.com/favicon.png',
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
      backgroundColor: GREY_50,
      appBar: AppBar(
        backgroundColor: YELLOW_500,
        elevation: 0,
        title: Text(
          '국내 1위 다이어트 주사 앱 | 삐약 ',
          style: H5_Semibold.copyWith(color: GREY_900),
        ),
        centerTitle: true,
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 8),
              Text(
                '어떤 정보를 찾으시나요?',
                style: H4_Bold.copyWith(color: GREY_900),
              ),
              const SizedBox(height: 8),
              Text(
                '삐약이와 함께하는 비만 및 다이어트 정복',
                style: B1_Regular.copyWith(color: GREY_600),
              ),
              const SizedBox(height: 24),

              // Guide Card
              GestureDetector(
                onTap: () => context.go('/guide'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: AspectRatio(
                          aspectRatio: 1200 / 630, // OG image ratio
                          child: SizedBox(
                            width: double.infinity,
                            child: CachedNetworkImage(
                                imageUrl:
                                    'https://images.vvd-health.com/back-office/admin/banner/9c1d4fb9-d6a7-436c-a5c9-1b048163ec04-4cbad6f0-afe3-4f3f-9a64-5b9c5296eac8.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: BLUE_200,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                '인기 콘텐츠',
                                style: B4_Semibold.copyWith(
                                    color:
                                        const Color.fromRGBO(10, 120, 182, 1)),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              '용량 & 나눠맞기 질문 총정리',
                              style: T1_Semibold.copyWith(color: GREY_900),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '고용량 주사해도 되나요? 나눠맞기 칸수는 어떤 기준으로 세나요?',
                              style: B2_Regular.copyWith(color: GREY_600),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Prescription Card
              GestureDetector(
                onTap: () => context.go('/prescription'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: AspectRatio(
                          aspectRatio: 1200 / 630, // OG image ratio
                          child: SizedBox(
                            width: double.infinity,
                            child: CachedNetworkImage(
                                imageUrl:
                                    'https://images.vvd-health.com/back-office/admin/banner/8c2af972-8d75-4950-8a65-24d2ee5686fb-ad66a17c-9689-4501-9201-07dd41a54d68.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: BLUE_200,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                '처방 가이드',
                                style: B4_Semibold.copyWith(
                                    color:
                                        const Color.fromRGBO(10, 120, 182, 1)),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              '다이어트 주사 처방 가이드',
                              style: T1_Semibold.copyWith(color: GREY_900),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '어디 병원을 가야되나요? 아무데서나 처방받을 수 있나요?',
                              style: B2_Regular.copyWith(color: GREY_600),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // Prescription Card
              GestureDetector(
                onTap: () => context.go('/efficacy'),
                child: Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.08),
                        blurRadius: 10,
                        offset: Offset(0, 2),
                      ),
                    ],
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16),
                          topRight: Radius.circular(16),
                        ),
                        child: AspectRatio(
                          aspectRatio: 1200 / 630, // OG image ratio
                          child: SizedBox(
                            width: double.infinity,
                            child: CachedNetworkImage(
                                imageUrl:
                                    'https://images.vvd-health.com/back-office/admin/banner/19865a92-49bd-480b-b924-87a1407634b0-9e23ac45-68eb-4c77-b8c2-970d0ede488f.png'),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(16),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                horizontal: 8,
                                vertical: 4,
                              ),
                              decoration: BoxDecoration(
                                color: BLUE_200,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                '다빈도 질문 TOP6',
                                style: B4_Semibold.copyWith(
                                    color:
                                        const Color.fromRGBO(10, 120, 182, 1)),
                              ),
                            ),
                            const SizedBox(height: 12),
                            Text(
                              '주사 효과 질문 총정리',
                              style: T1_Semibold.copyWith(color: GREY_900),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              '효과 없는데 용량 올려도 되나요? 반감기 지나면 약 효과 없는건가요?',
                              style: B2_Regular.copyWith(color: GREY_600),
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 32),

              SizedBox(
                width: double.infinity,
                height: 56,
                child: ElevatedButton(
                  onPressed: _launchURL,
                  style: ElevatedButton.styleFrom(
                    backgroundColor: YELLOW_600,
                    foregroundColor: BLUE_50,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    elevation: 0,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.download_rounded,
                        size: 20,
                        color: BLUE_50,
                      ),
                      const SizedBox(width: 8),
                      Text(
                        '삐약 앱 설치하기',
                        style: Bt1_Semibold.copyWith(color: BLUE_50),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }
}
