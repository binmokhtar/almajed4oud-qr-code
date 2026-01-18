import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

enum ScreenType { mobile, tablet, desktop }

@lazySingleton
class ResponsiveService {
  ///
  double _width = 375;
  double _height = 812;
  double _textScaleFactor = 1.0;
  Orientation _orientation = Orientation.portrait;
  bool _isInitialized = false;

  ///
  static const double _mobileBase = 375;
  static const double _tabletBase = 600;
  static const double _desktopBase = 1024;

  ///
  void init(MediaQueryData media, BoxConstraints constraints) {
    _width = constraints.maxWidth;
    _height = constraints.maxHeight;
    _textScaleFactor = media.textScaler.scale(1);
    _orientation = media.orientation;
    _isInitialized = true;
  }

  bool get isInitialized => _isInitialized;

  ///
  ScreenType get screenType => switch (_width) {
    < 600 => ScreenType.mobile,
    < 1024 => ScreenType.tablet,
    _ => ScreenType.desktop,
  };

  bool get isMobile => screenType == ScreenType.mobile;
  bool get isTablet => screenType == ScreenType.tablet;
  bool get isDesktop => screenType == ScreenType.desktop;

  bool get isPortrait => _orientation == Orientation.portrait;
  bool get isLandscape => _orientation == Orientation.landscape;

  double get screenWidth => _width;
  double get screenHeight => _height;

  ///
  double get _baseWidth => switch (screenType) {
    ScreenType.mobile => _mobileBase,
    ScreenType.tablet => _tabletBase,
    ScreenType.desktop => _desktopBase,
  };

  double get scale => _width / _baseWidth;
  double get safeScale => scale.clamp(0.8, 1.2);

  ///
  double font(double size, {double? min, double? max}) {
    double factor = safeScale;
    if (isTablet || isDesktop) {
      factor = 1 + ((safeScale - 1) * 0.5);
    }
    final base = size * factor;
    final scaled = base * _textScaleFactor;
    return scaled.clamp(min ?? 0, max ?? double.infinity);
  }

  ///
  double radius(double value) => value * safeScale;

  ///
  double size(double value) => value * safeScale;

  ///
  double icon(double value) => (value * safeScale).clamp(value * 0.8, value * 1.5);

  ///
  T adaptive<T>({required T mobile, T? tablet, T? desktop}) => switch (screenType) {
    ScreenType.mobile => mobile,
    ScreenType.tablet => tablet ?? mobile,
    ScreenType.desktop => desktop ?? tablet ?? mobile,
  };
}
