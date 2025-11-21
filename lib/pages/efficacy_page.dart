import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/utils/typos.dart';

import '../utils/colors.dart';
import '../utils/meta_tags.dart';

class EfficacyPage extends StatefulWidget {
  @override
  State<EfficacyPage> createState() => _EfficacyPageState();
}

class _EfficacyPageState extends State<EfficacyPage> {
  @override
  void initState() {
    super.initState();
    // Update meta tags when page loads
    MetaTags.updateMetaTags(
      title: '주사 효과 질문 총정리ㅣ삐약 어플',
      description: '효과 없는데 용량 올려도 되나요? 반감기 지나면 약 효과 없는건가요?',
      keywords:
          '삐약, 용량계산, 나눠맞기, 의료 어플, 약 용량, 의료 커뮤니티, 건강 정보, 위고비, 마운자로, 비만치료제, 위고비 가격, 마운자로 가격, GLP-1 주사, 위고비 병원, 마운자로 병원, 위고비 갤, 세마글루타이드, 티르제파타이드',
      imageUrl:
          'https://images.vvd-health.com/back-office/admin/banner/19865a92-49bd-480b-b924-87a1407634b0-9e23ac45-68eb-4c77-b8c2-970d0ede488f.png',
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
                                  'https://images.vvd-health.com/back-office/admin/banner/3a56b2f7-dd36-4a09-8f1c-7f4cb9e0e1dd-2ad1e3c0-04f3-46de-8764-267c40a90477.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/c06b813e-54de-4dbb-a897-469953999d8d-0ace419b-7f74-4736-ba48-1e1998b5a096.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/53f70718-0f9e-4976-8b2c-70137cc675c3-267a156f-0952-4e38-97fe-6a1c5df88066.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/ae827f55-5476-49e9-b1fd-468ca6904779-a4060388-e87a-4695-b3ce-79edad1cc3bb.png'),
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
          // Positioned(
          //   left: 16,
          //   right: 16,
          //   bottom: 12,
          //   child: SizedBox(
          //     width: 328,
          //     height: 60,
          //     child: ElevatedButton(
          //       onPressed: _launchURL,
          //       style: ElevatedButton.styleFrom(
          //         backgroundColor: YELLOW_600,
          //         shape: RoundedRectangleBorder(
          //           borderRadius: BorderRadius.circular(8),
          //         ),
          //         elevation: 4,
          //         padding: EdgeInsets.symmetric(vertical: 16),
          //       ),
          //       child: Text(
          //         '커뮤니티 인기글 더보기',
          //         style: T1_Bold.copyWith(
          //           color: BLUE_50,
          //         ),
          //       ),
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
