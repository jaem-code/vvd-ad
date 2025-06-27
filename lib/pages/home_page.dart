import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:vvd_ad/utils/colors.dart';
import '../utils/typos.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // 모바일 앱 스타일의 앱바
            SliverAppBar(
              expandedHeight: 120,
              floating: false,
              pinned: true,
              elevation: 0,
              backgroundColor: BLUE_50,
              flexibleSpace: FlexibleSpaceBar(
                title: Text(
                  'VVD AD',
                  style: H4_Bold.copyWith(color: GREY_950),
                ),
                centerTitle: true,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
