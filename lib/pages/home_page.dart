import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import '../utils/colors.dart';
import '../utils/typos.dart';
import '../utils/meta_tags.dart';

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
      keywords: '삐약, VVD Health, 의료 정보, 건강 관리, 위고비, 마운자로, 비만치료제, 위고비 가격, 마운자로 가격, GLP-1 주사, 위고비 병원, 마운자로 병원, 위고비 갤',
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
        backgroundColor: Colors.white,
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
              Text(
                '어떤 정보를 찾으시나요?',
                style: H4_Bold.copyWith(color: GREY_900),
              ),
              const SizedBox(height: 8),
              Text(
                '의료진과 함께하는 정확한 정보',
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
                          child: Image.asset(
                            'lib/assets/og_image_guide.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: GREY_500,
                                child: Center(
                                  child: Icon(
                                    Icons.article_outlined,
                                    size: 48,
                                    color: BLUE_600,
                                  ),
                                ),
                              );
                            },
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
                                color: YELLOW_100,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                '인기 콘텐츠',
                                style: B4_Medium.copyWith(color: YELLOW_600),
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
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Text(
                                  '자세히 보기',
                                  style: B2_Medium.copyWith(color: BLUE_600),
                                ),
                                const SizedBox(width: 4),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                  color: BLUE_600,
                                ),
                              ],
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
                          child: Image.asset(
                            'lib/assets/og_image_prescription.png',
                            fit: BoxFit.cover,
                            errorBuilder: (context, error, stackTrace) {
                              return Container(
                                color: GREEN_50,
                                child: Center(
                                  child: Icon(
                                    Icons.medical_services_outlined,
                                    size: 48,
                                    color: GREEN_500,
                                  ),
                                ),
                              );
                            },
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
                                color: GREEN_50,
                                borderRadius: BorderRadius.circular(4),
                              ),
                              child: Text(
                                '처방 가이드',
                                style: B4_Medium.copyWith(color: GREEN_500),
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
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Text(
                                  '자세히 보기',
                                  style: B2_Medium.copyWith(color: BLUE_600),
                                ),
                                const SizedBox(width: 4),
                                Icon(
                                  Icons.arrow_forward_ios,
                                  size: 14,
                                  color: BLUE_600,
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              const SizedBox(height: 32),

              // App Install CTA Section
              Container(
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    colors: [
                      GREY_500,
                      GREY_700,
                    ],
                  ),
                  borderRadius: BorderRadius.circular(16),
                ),
                padding: const EdgeInsets.all(20),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            Icons.phone_iphone,
                            color: Colors.white,
                            size: 24,
                          ),
                        ),
                        const SizedBox(width: 12),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '삐약 앱에서 더 많은 기능을',
                                style:
                                    T2_Semibold.copyWith(color: Colors.white),
                              ),
                              const SizedBox(height: 4),
                              Text(
                                '실시간 커뮤니티와 맞춤 정보 확인',
                                style: B3_Regular.copyWith(
                                  color: Colors.white.withOpacity(0.9),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    SizedBox(
                      width: double.infinity,
                      height: 48,
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
                  ],
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
