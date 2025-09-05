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
                                  'https://images.vvd-health.com/back-office/admin/banner/5f78cdcc-4cc7-4e5b-a85f-b643a1d5b20a-719e0890-3d2f-418b-9d38-819b22afad20.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/296a8201-5dfe-495a-99b1-82e2011f69e9-d8d8e545-0f91-40f2-883e-a514ce87c532.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/6df8d359-3fdb-43cc-b508-8eada8616639-8c24676f-613c-4513-8972-73c20f79d9b2.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/be8876da-7786-44b2-9858-19d81a126fd1-1fc8aef1-abf6-4aba-93f6-5295c08719d5.png'),
                        ),
                        SizedBox(
                          width: double.infinity,
                          child: CachedNetworkImage(
                              imageUrl:
                                  'https://images.vvd-health.com/back-office/admin/banner/fa619141-9f61-4346-b87e-57145c91341e-232a8cfd-993e-4e21-93de-08d0c37f0b39.png'),
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
