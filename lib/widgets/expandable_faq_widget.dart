import 'package:flutter/material.dart';
import '../utils/colors.dart';
import '../utils/typos.dart';

class ExpandableFaqWidget extends StatefulWidget {
  final String question;
  final String answer;
  final Color? backgroundColor;
  final Color? questionTextColor;
  final Color? answerTextColor;
  final TextStyle? questionTextStyle;
  final TextStyle? answerTextStyle;
  final EdgeInsets? padding;
  final BorderRadius? borderRadius;
  final bool initiallyExpanded;
  final Duration animationDuration;
  final Widget? leadingIcon;
  final Widget? expandIcon;
  final Widget? collapseIcon;

  const ExpandableFaqWidget({
    Key? key,
    required this.question,
    required this.answer,
    this.backgroundColor,
    this.questionTextColor,
    this.answerTextColor,
    this.questionTextStyle,
    this.answerTextStyle,
    this.padding,
    this.borderRadius,
    this.initiallyExpanded = false,
    this.animationDuration = const Duration(milliseconds: 300),
    this.leadingIcon,
    this.expandIcon,
    this.collapseIcon,
  }) : super(key: key);

  @override
  State<ExpandableFaqWidget> createState() => _ExpandableFaqWidgetState();
}

class _ExpandableFaqWidgetState extends State<ExpandableFaqWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _animationController;
  late Animation<double> _expandAnimation;
  bool _isExpanded = false;

  @override
  void initState() {
    super.initState();
    _isExpanded = widget.initiallyExpanded;
    _animationController = AnimationController(
      duration: widget.animationDuration,
      vsync: this,
    );
    _expandAnimation = CurvedAnimation(
      parent: _animationController,
      curve: Curves.easeInOut,
    );

    if (_isExpanded) {
      _animationController.value = 1.0;
    }
  }

  @override
  void dispose() {
    _animationController.dispose();
    super.dispose();
  }

  void _toggleExpanded() {
    setState(() {
      _isExpanded = !_isExpanded;
      if (_isExpanded) {
        _animationController.forward();
      } else {
        _animationController.reverse();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4),
      decoration: BoxDecoration(
        color: widget.backgroundColor ?? Colors.white,
        borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Column(
        children: [
          // 질문 부분 (항상 표시)
          InkWell(
            onTap: _toggleExpanded,
            borderRadius: widget.borderRadius ?? BorderRadius.circular(12),
            child: Padding(
              padding: widget.padding ?? const EdgeInsets.all(16),
              child: Row(
                children: [
                  // 선택적 아이콘
                  if (widget.leadingIcon != null) ...[
                    widget.leadingIcon!,
                    const SizedBox(width: 12),
                  ],
                  // 질문 텍스트
                  Expanded(
                    child: Text(
                      widget.question,
                      style: widget.questionTextStyle ??
                          B2_Semibold.copyWith(
                            color: widget.questionTextColor ?? GREY_950,
                          ),
                    ),
                  ),
                  // 토글 아이콘
                  AnimatedRotation(
                    turns: _isExpanded ? 0.5 : 0,
                    duration: widget.animationDuration,
                    child: _isExpanded
                        ? (widget.collapseIcon ??
                            Icon(
                              Icons.keyboard_arrow_up,
                              color: GREY_600,
                              size: 24,
                            ))
                        : (widget.expandIcon ??
                            Icon(
                              Icons.keyboard_arrow_down,
                              color: GREY_600,
                              size: 24,
                            )),
                  ),
                ],
              ),
            ),
          ),
          // 답변 부분 (토글 가능)
          SizeTransition(
            sizeFactor: _expandAnimation,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.only(
                left: widget.padding?.left ?? 16,
                right: widget.padding?.right ?? 16,
                bottom: widget.padding?.bottom ?? 16,
              ),
              child: Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: BLUE_50.withOpacity(0.3),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Text(
                  widget.answer,
                  style: widget.answerTextStyle ??
                      B3_Regular.copyWith(
                        color: widget.answerTextColor ?? GREY_800,
                        height: 1.5,
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

// FAQ 리스트를 위한 편의 위젯
class FaqListWidget extends StatelessWidget {
  final List<FaqItem> faqItems;
  final EdgeInsets? padding;
  final Color? backgroundColor;

  const FaqListWidget({
    Key? key,
    required this.faqItems,
    this.padding,
    this.backgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? const EdgeInsets.all(16),
      color: backgroundColor,
      child: Column(
        children: faqItems
            .map((item) => ExpandableFaqWidget(
                  question: item.question,
                  answer: item.answer,
                  leadingIcon: item.icon,
                ))
            .toList(),
      ),
    );
  }
}

// FAQ 아이템 데이터 클래스
class FaqItem {
  final String question;
  final String answer;
  final Widget? icon;

  const FaqItem({
    required this.question,
    required this.answer,
    this.icon,
  });
}
