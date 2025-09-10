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
                                  'https://images.vvd-health.com/back-office/admin/banner/f21d3c1e-475d-4dec-af3a-e6942ef96803-c0e0cf60-8d72-4249-9686-1f8a4c6b1455.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/5ac3fd99-e04f-4a1a-a4ad-95e8e14af362-d857d951-52f4-4f7e-85d5-57a76c2f15de.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/75209e5d-31d4-4dfb-b208-25ebbd979b4f-8798c76c-55ca-4b65-9960-bdaf1f1e3b09.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/be56d516-ee87-41b4-9c55-74de4c604b27-1488d87f-6b57-42f5-961e-9f53338d95db.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/aadb6516-a177-438e-9770-670161547075-e114b751-a876-47ff-9df3-29065939f328.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/d641fea5-4d37-42c0-992b-3b423eb8ecdd-04d0da0a-32d6-4aea-a44f-4a5e376e15ba.png'),
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
