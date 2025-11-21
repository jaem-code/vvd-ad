import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/utils/typos.dart';

import '../utils/colors.dart';
import '../utils/meta_tags.dart';

class BiblePage extends StatefulWidget {
  @override
  State<BiblePage> createState() => _BiblePageState();
}

class _BiblePageState extends State<BiblePage> {
  @override
  void initState() {
    super.initState();
    // Update meta tags when page loads
    MetaTags.updateMetaTags(
      title: '삐약 100% 활용법 ㅣ삐약 어플',
      description: '다이어트 성공자의 관리생활 루틴 총 정리',
      keywords:
          '삐약, 용량계산, 나눠맞기, 의료 어플, 약 용량, 의료 커뮤니티, 건강 정보, 위고비, 마운자로, 비만치료제, 위고비 가격, 마운자로 가격, GLP-1 주사, 위고비 병원, 마운자로 병원, 위고비 갤, 세마글루타이드, 티르제파타이드',
      imageUrl:
          'https://images.vvd-health.com/back-office/admin/banner/6ca8ff6f-fbbb-4462-a148-e43f3de7326f-679ad30f-bc82-44a4-b11b-3d109a27a410.png',
    );
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
                                  'https://images.vvd-health.com/back-office/admin/banner/0e01527b-978c-41e7-be98-ac5fe177d33f-09b5ed97-ab2c-4aa8-a429-337f9f354958.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/b064d6a5-4432-44bc-8055-98c63f3c0765-55535554-638f-4c1e-8425-86c893d32a00.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/a97298f3-9ff3-4683-8c6a-1c45fc140833-0a9957a3-a4b5-4205-a845-0bb906eae22b.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/0ec34bfe-8c53-4022-9dc7-697a29dd5d36-2eaa4799-1327-469f-b7a2-2b2581565b2a.png'),
                        ),
                        SizedBox(height: 100), // 버튼 공간 확보
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
