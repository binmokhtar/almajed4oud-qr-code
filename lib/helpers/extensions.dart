import 'package:flutter/material.dart';
import 'package:qr_code/services/get_it_services.dart';
import 'package:qr_code/services/responsive_services.dart';

extension NumExt on num {
  ResponsiveService get _rs => getIt<ResponsiveService>();

  double get f => _rs.font(toDouble());
  double get r => _rs.radius(toDouble());
  double get s => _rs.size(toDouble());
  double get i => _rs.icon(toDouble());
}

extension BuildContextExt on BuildContext {
  void _force() {
    MediaQuery.sizeOf(this);
  }

  ResponsiveService get _rs => getIt<ResponsiveService>();

  T adaptive<T>({required T mobile, T? tablet, T? desktop}) {
    _force();
    return _rs.adaptive<T>(mobile: mobile, tablet: tablet, desktop: desktop);
  }

  Size get _mq => MediaQuery.sizeOf(this);
  double get width => _mq.width;
  double get height => _mq.height;

  bool get isMobile {
    _force();
    return _rs.isMobile;
  }

  bool get isTablet {
    _force();
    return _rs.isTablet;
  }

  bool get isDesktop {
    _force();
    return _rs.isDesktop;
  }
}
