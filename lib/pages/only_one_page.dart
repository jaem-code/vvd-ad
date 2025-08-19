import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/services/web_analytics_service.dart';

import 'package:vvd_ad/utils/colors.dart';
import '../utils/typos.dart';
import '../widgets/expandable_faq_widget.dart';
import 'dart:html' as html;

class OnlyOnePage extends StatefulWidget {
  static const bool showLogoOverlay = true;

  @override
  State<OnlyOnePage> createState() => _OnlyOnePageState();
}

class _OnlyOnePageState extends State<OnlyOnePage> {
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
                        Container(
                          color: YELLOW_600,
                          width: double.infinity,
                          height: 82,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                '본 이벤트는 삐약 단독 이벤트 입니다.',
                                style: T2_Semibold.copyWith(color: GREY_950),
                              ),
                              SizedBox(height: 4),
                              Text(
                                '반드시 상담 신청 후 병원을 내원해주세요!',
                                style: T2_Semibold.copyWith(color: GREY_950),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/f4c8cd87-1358-4337-801a-72ab3e3d7ba9-8b034ec2-9e44-4691-bf9f-d5d932e543fb.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/865b7900-72d2-46e9-900f-73184017aaa7-a87a8335-3ade-408b-88f2-c34f7ae11764.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/91dcd00e-e27c-4408-b33e-cd0eec7d136f-dd19e8a8-6bb8-4e08-b6b8-9057ec50d1c6.png'),
                        ),
                        Container(
                          color: GREY_150,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              // FAQ 섹션 추가
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 0, vertical: 8),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    FaqListWidget(
                                      backgroundColor: GREY_150,
                                      faqItems: [
                                        FaqItem(
                                          question: 'BWA ON 상세',
                                          imageUrl:
                                              'https://images.vvd-health.com/back-office/admin/banner/c4c6a3ae-624a-4274-ac4d-afdf641dc4a0-83eed1a7-811d-4720-954b-88426195bd78.png',
                                          icon: Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(51, 30, 28, 1),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Text(
                                                '1',
                                                style: Bt2_Medium.copyWith(
                                                    color: BLUE_50),
                                              ),
                                            ),
                                          ),
                                        ),
                                        FaqItem(
                                          question: '만성음식물 알러지 검사 상세',
                                          imageUrl:
                                              'https://images.vvd-health.com/back-office/admin/banner/54b3e1e0-69ee-4e85-8cf2-232a95182b93-492d044d-9832-46a4-8050-6079d500c455.png',
                                          icon: Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(51, 30, 28, 1),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Text(
                                                '2',
                                                style: Bt2_Medium.copyWith(
                                                    color: BLUE_50),
                                              ),
                                            ),
                                          ),
                                        ),
                                        FaqItem(
                                          question: '고압산소케어 상세',
                                          imageUrl:
                                              'https://images.vvd-health.com/back-office/admin/banner/52c55238-b4d8-4c14-9fe4-eea83af5e59e-69fd1a4d-975b-42ee-88e5-ea8db8fec53a.png',
                                          icon: Container(
                                            width: 24,
                                            height: 24,
                                            decoration: BoxDecoration(
                                              color:
                                                  Color.fromRGBO(51, 30, 28, 1),
                                              shape: BoxShape.circle,
                                            ),
                                            child: Center(
                                              child: Text(
                                                '3',
                                                style: Bt2_Medium.copyWith(
                                                    color: BLUE_50),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/8ba663df-7f16-4eb1-925b-a1b8c3129a6d-564ac5e2-0cf1-4504-986e-a2a91808d311.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/612f7e94-a923-4574-a7a6-49e28797a4f3-7be0578b-9986-4212-873c-69fea038d11a.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/169235b3-9534-4146-80c9-6481fc0a5a4f-e76b16f1-db28-454c-96d2-6bb9797ae17c.png'),
                        ),
                        SizedBox(height: 100),
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
            bottom: 24,
            child: SizedBox(
              width: 328,
              height: 60,
              child: ElevatedButton(
                onPressed: () async {
                  // 수정 후
                  WebAnalyticsService.logConsultationRequest(
                    source: 'floating_button',
                  );
                  WebAnalyticsService.logButtonClick(
                    buttonName: '상담 신청',
                    pageName: 'OnlyOnePage',
                  );

                  final String urlString =
                      'https://walla.my/v/O75LxDLCRbOHAJzIsPGs';

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
                style: ElevatedButton.styleFrom(
                  backgroundColor: YELLOW_600,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  elevation: 4,
                  padding: EdgeInsets.symmetric(vertical: 16),
                ),
                child: Text(
                  '상담 신청',
                  style: T1_Bold.copyWith(
                    color: GREY_950,
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
