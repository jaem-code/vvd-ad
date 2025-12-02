import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/services/web_analytics_service.dart';

import 'package:vvd_ad/utils/colors.dart';
import '../utils/typos.dart';
import '../widgets/expandable_faq_widget.dart';
import 'dart:html' as html;

class HandokPage extends StatefulWidget {
  static const bool showLogoOverlay = true;

  @override
  State<HandokPage> createState() => _HandokPageState();
}

class _HandokPageState extends State<HandokPage> {
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
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/5e0392cf-f82f-44a1-a465-738a38af7b34-14475246-2ead-445a-9b07-66b0149b27a7.jpg'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/7204d078-3ce1-420e-a6fb-d37ffced390b-bec66920-cfe5-45ae-93b2-9d277336a3d4.jpg'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/33295dd3-55c2-4f18-b6a2-7b0dd931c66a-ba86470f-08ca-44c1-b4dc-175b57aaa85b.jpg'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/9efb7bcf-6233-4710-9605-4cae8cfd3326-d3d0187d-9bed-4277-95a4-238b5a5da2d8.jpg'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/f6e1f192-da01-4f11-a1ea-30c084e94d68-4353d6b7-4be1-4546-8d6f-dcec0b1e08f3.jpg'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/309272df-a44a-4497-87d7-d9e3c8fcb227-20907ca5-9b52-4f8b-8bb1-43ee8514faee.jpg'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/38b6ae3c-c926-4e46-b3b2-6b10ef03da60-c315d0af-7962-49e5-894d-71faa1457c83.jpg'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/62318bdf-b815-4540-8f14-97a1ea6396bf-703d16b2-3dbd-4b45-aa46-36614b5f1aa6.jpg'),
                        ),
                        SizedBox(height: 40),
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
