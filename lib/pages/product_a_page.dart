import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/utils/colors.dart';
import '../utils/typos.dart';
import '../widgets/overlay_image_widget.dart';
import '../widgets/expandable_faq_widget.dart';

class ProductAPage extends StatelessWidget {
  static const String topBannerImageUrl =
      'https://vivid-bucket-real.s3.ap-northeast-2.amazonaws.com/back-office/admin/banner/a798a44c-a7de-4799-a30d-ec6cd7b9db87-e48525cd-aeb6-4d29-9cf4-09832c5f6073.png';

  static const String consultationButton =
      'https://vivid-bucket-real.s3.ap-northeast-2.amazonaws.com/back-office/admin/banner/74b1f1e2-ff09-4273-8822-17b544757e20-9188134f-46a0-4e23-9cf0-d1c6b92936b2.png';

  static const String bodyBannerFirst =
      'https://vivid-bucket-real.s3.ap-northeast-2.amazonaws.com/back-office/admin/banner/09c65679-820f-48f8-aef2-4a8dbc41b76e-bc0cb8e7-3a10-47ea-8979-dff730a38200.png';

  static const String companyLogoUrl =
      'https://vivid-bucket-real.s3.ap-northeast-2.amazonaws.com/back-office/admin/banner/company-logo.png';
  static const bool showLogoOverlay = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // 모바일 최적화 앱바
            SliverAppBar(
              expandedHeight: 60,
              floating: true,
              pinned: true,
              elevation: 1,
              backgroundColor: BLUE_50,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '🐥삐약',
                    style: T2_Semibold.copyWith(color: GREY_950),
                  ),
                  SizedBox(width: 8),
                  Text(
                    'X',
                    style: T2_Semibold.copyWith(color: GREY_950),
                  ),
                  SizedBox(width: 8),
                  Flexible(
                    child: Text(
                      '단 한가지 의원 단독 이벤트',
                      style: T2_Semibold.copyWith(color: GREY_950),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
                ],
              ),
              centerTitle: true,
            ),

            SliverToBoxAdapter(
              child: Container(
                color: BLUE_50,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: double.infinity,
                      height: 300,
                      child: OverlayImageWidget(
                        borderRadius: BorderRadius.zero,
                        imageUrl: topBannerImageUrl,
                        overlayImageUrl: topBannerImageUrl,
                        showOverlay: showLogoOverlay,
                        width: double.infinity,
                        height: 300,
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Wrap(
                            alignment: WrapAlignment.center,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            children: [
                              Text(
                                '🐥삐약',
                                style: H4_Semibold.copyWith(color: GREY_950),
                              ),
                              SizedBox(width: 4),
                              Text(
                                'X',
                                style: H4_Semibold.copyWith(color: GREY_950),
                              ),
                              SizedBox(width: 4),
                              Text(
                                '단 한가지 의원 단독 이벤트',
                                style: H4_Semibold.copyWith(color: GREY_950),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Expanded(
                                child: Text(
                                  ' 본 이벤트는 🐥삐약 단독 이벤트 입니다. 반드시 상담 신청 후, 병원을 내원해 주세요!',
                                  style: T2_Medium.copyWith(color: GREY_950),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () async {
                              final Uri url = Uri.parse(
                                  'https://walla.my/v/O75LxDLCRbOHAJzIsPGs');
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
                            },
                            child: Container(
                              width: double.infinity,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: GREY_700.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: CachedNetworkImage(
                                  imageUrl: consultationButton,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue[50]!,
                                          Colors.blue[100]!
                                        ],
                                      ),
                                    ),
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                        color: YELLOW_500,
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),
                          Container(
                            width: double.infinity,
                            height: 200,
                            margin: const EdgeInsets.symmetric(horizontal: 16),
                            child: OverlayImageWidget(
                              showOverlay: false,
                              imageUrl: bodyBannerFirst,
                              width: double.infinity,
                              height: 200,
                            ),
                          ),
                          SizedBox(height: 20),
                          GestureDetector(
                            onTap: () async {
                              final Uri url = Uri.parse(
                                  'https://walla.my/v/O75LxDLCRbOHAJzIsPGs');
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
                            },
                            child: Container(
                              width: double.infinity,
                              margin: const EdgeInsets.all(16),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: GREY_700.withOpacity(0.2),
                                    spreadRadius: 2,
                                    blurRadius: 10,
                                    offset: const Offset(0, 4),
                                  ),
                                ],
                              ),
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(20),
                                child: CachedNetworkImage(
                                  imageUrl: consultationButton,
                                  fit: BoxFit.cover,
                                  placeholder: (context, url) => Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.topLeft,
                                        end: Alignment.bottomRight,
                                        colors: [
                                          Colors.blue[50]!,
                                          Colors.blue[100]!
                                        ],
                                      ),
                                    ),
                                    child: const Center(
                                      child: CircularProgressIndicator(
                                        color: YELLOW_500,
                                      ),
                                    ),
                                  ),
                                  errorWidget: (context, url, error) {
                                    return Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [],
                                    );
                                  },
                                ),
                              ),
                            ),
                          ),
                          SizedBox(height: 20),

                          // FAQ 섹션 추가
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 16),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  '자주 묻는 질문',
                                  style: H4_Semibold.copyWith(color: GREY_950),
                                ),
                                SizedBox(height: 16),
                                FaqListWidget(
                                  padding: EdgeInsets.zero,
                                  faqItems: [
                                    FaqItem(
                                      question: '영양 상담은 어떤 시스템인가요?',
                                      answer:
                                          '전문 영양사가 1:1로 맞춤형 영양 상담을 제공합니다. 개인의 건강 상태, 생활 패턴, 목표에 따라 최적의 영양 계획을 수립해드립니다.',
                                      icon: Icon(Icons.help_outline,
                                          color: GREY_950, size: 20),
                                    ),
                                    FaqItem(
                                      question: '상담 시간은 얼마나 걸리나요?',
                                      answer:
                                          '초회 상담은 약 60분, 후속 상담은 30분 정도 소요됩니다. 충분한 시간을 두고 꼼꼼히 상담해드립니다.',
                                      icon: Icon(Icons.schedule,
                                          color: GREY_950, size: 20),
                                    ),
                                    FaqItem(
                                      question: '온라인 상담도 가능한가요?',
                                      answer:
                                          '네, 화상 통화를 통한 온라인 상담도 가능합니다. 대면 상담과 동일한 품질의 서비스를 제공합니다.',
                                      icon: Icon(Icons.video_call,
                                          color: GREY_950, size: 20),
                                    ),
                                    FaqItem(
                                      question: '상담 후 관리는 어떻게 되나요?',
                                      answer:
                                          '상담 후 개인별 맞춤 식단표와 영양 가이드를 제공하며, 정기적인 팔로업을 통해 지속적으로 관리해드립니다.',
                                      icon: Icon(Icons.support_agent,
                                          color: GREY_950, size: 20),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),

                          SizedBox(height: 40),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
