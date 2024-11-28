import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OneButton extends StatefulWidget {
  const OneButton({
    super.key,
    this.text,
    this.onTap,
    this.isEnabled = true,
    this.color,
    this.textStyle,
    this.borderRadius,
    this.width,
    this.padding,
    this.iconColor,
    this.iconPath,
    this.secondaryIconPath,
    this.iconSize,
    this.disabledColor,
    this.isLoading = false,
    this.useNativeIconColor = false,
    this.height = 52,
  });
  final Function()? onTap;
  final String? text;
  final TextStyle? textStyle;
  final EdgeInsets? padding;
  final bool isEnabled;
  final Color? color;
  final BorderRadius? borderRadius;
  final double height;
  final double? width;
  final Color? iconColor;
  final bool useNativeIconColor;
  final String? iconPath;
  final String? secondaryIconPath;
  final double? iconSize;
  final Color? disabledColor;
  final bool isLoading;

  @override
  State<OneButton> createState() => _OneButtonState();
}

class _OneButtonState extends State<OneButton> with SingleTickerProviderStateMixin {
  bool hasZoom = false;
  late final AnimationController controller = AnimationController(
    duration: const Duration(milliseconds: 200),
    vsync: this,
  );
  final Tween<double> scale = Tween<double>(begin: 1, end: 1.05);
  late final Animation<double> animation = scale.animate(
    CurvedAnimation(
      parent: controller,
      curve: Curves.fastEaseInToSlowEaseOut,
    ),
  );
  @override
  void initState() {
    super.initState();
    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) {
        _startZoomAnimation(!hasZoom);
      }
    });
  }

  void _startZoomAnimation(bool value) {
    setState(() {
      hasZoom = value;
    });
    if (value) {
      controller.forward();
    } else {
      controller.reverse();
    }
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        _startZoomAnimation(true);
      },
      onExit: (_) {
        _startZoomAnimation(false);
      },
      child: ScaleTransition(
        scale: animation,
        child: SizedBox(
          width: widget.width,
          height: widget.height,
          child: ElevatedButton(
            onPressed: () {
              _startZoomAnimation(true);
              if (widget.isEnabled) {
                HapticFeedback.lightImpact();
                widget.onTap?.call();
              }
            },
            style: ButtonStyle(
              mouseCursor: WidgetStateProperty.all(
                widget.isEnabled ? SystemMouseCursors.click : SystemMouseCursors.basic,
              ),
              padding: WidgetStateProperty.all(
                widget.padding ??
                    const EdgeInsets.symmetric(
                      horizontal: 16,
                      vertical: 0,
                    ),
              ),
              shape: WidgetStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: widget.borderRadius ?? BorderRadius.circular(24),
                ),
              ),
            ),
            child: _buildBody(context),
          ),
        ),
      ),
    );
  }

  Widget _buildBody(BuildContext context) {
    final String buttonText = widget.text ?? '';
    final theme = Theme.of(context);
    return Text(
      buttonText,
      style: theme.textTheme.bodyMedium?.copyWith(color: theme.colorScheme.primary),
      maxLines: 1,
      overflow: TextOverflow.ellipsis,
    );
  }
}
