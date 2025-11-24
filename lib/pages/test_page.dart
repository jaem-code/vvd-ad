import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:vvd_ad/utils/typos.dart';

import '../utils/colors.dart';
import '../utils/meta_tags.dart';

class TestPage extends StatefulWidget {
  @override
  State<TestPage> createState() => _TestPageState();
}

class _TestPageState extends State<TestPage> {
  @override
  void initState() {
    super.initState();
  }

  Future<void> _launchURL(String scheme) async {
    final Uri url = Uri.parse(scheme);
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
                        InkWell(
                          onTap: () {
                            _launchURL('vivid://home');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('홈으로 가기'),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            _launchURL('vivid://record');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('관리생활로 가기'),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            _launchURL('vivid://review');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('약후기로 가기'),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            _launchURL('vivid://community');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('커뮤니티로 가기'),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            _launchURL('vivid://blog');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('블로그로 가기'),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            _launchURL('vivid://myinfo');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('내정보로 가기'),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            _launchURL('vivid://hospital');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('병원찾기로 가기'),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            _launchURL('vivid://pharmacy');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('약국으로 가기'),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            _launchURL('https://deeplink.vvd-health.com/');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('딥링크 가기'),
                          ),
                        ),
                        SizedBox(height: 40),
                        InkWell(
                          onTap: () {
                            _launchURL(
                                'https://www.youtube.com/watch?v=S2XdG1Uael8');
                          },
                          child: SizedBox(
                            width: 240,
                            child: Text('유튜브로 가기'),
                          ),
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
