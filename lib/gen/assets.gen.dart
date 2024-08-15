/// GENERATED CODE - DO NOT MODIFY BY HAND
/// *****************************************************
///  FlutterGen
/// *****************************************************

// coverage:ignore-file
// ignore_for_file: type=lint
// ignore_for_file: directives_ordering,unnecessary_import,implicit_dynamic_list_literal,deprecated_member_use

import 'package:flutter/widgets.dart';

class $AssetsIconsGen {
  const $AssetsIconsGen();

  /// File path: assets/icons/Brain 1.svg
  String get brain1 => 'assets/icons/Brain 1.svg';

  /// File path: assets/icons/Docdoc.svg
  String get docdoc => 'assets/icons/Docdoc.svg';

  /// File path: assets/icons/Man Doctor Europe 1.svg
  String get manDoctorEurope1 => 'assets/icons/Man Doctor Europe 1.svg';

  /// File path: assets/icons/logo.svg
  String get logo => 'assets/icons/logo.svg';

  /// File path: assets/icons/magic-star.svg
  String get magicStar => 'assets/icons/magic-star.svg';

  /// File path: assets/icons/new_notfication.svg
  String get newNotfication => 'assets/icons/new_notfication.svg';

  /// File path: assets/icons/notification.svg
  String get notification => 'assets/icons/notification.svg';

  /// List of all assets
  List<String> get values => [
        brain1,
        docdoc,
        manDoctorEurope1,
        logo,
        magicStar,
        newNotfication,
        notification
      ];
}

class $AssetsImagesGen {
  const $AssetsImagesGen();

  /// File path: assets/images/Background.png
  AssetGenImage get background =>
      const AssetGenImage('assets/images/Background.png');

  /// File path: assets/images/doc.png
  AssetGenImage get doc => const AssetGenImage('assets/images/doc.png');

  /// File path: assets/images/doc_container.png
  AssetGenImage get docContainer =>
      const AssetGenImage('assets/images/doc_container.png');

  /// File path: assets/images/onboarding_background.png
  AssetGenImage get onboardingBackground =>
      const AssetGenImage('assets/images/onboarding_background.png');

  /// File path: assets/images/onboarding_doc.png
  AssetGenImage get onboardingDoc =>
      const AssetGenImage('assets/images/onboarding_doc.png');

  /// File path: assets/images/splash.png
  AssetGenImage get splash => const AssetGenImage('assets/images/splash.png');

  /// List of all assets
  List<AssetGenImage> get values => [
        background,
        doc,
        docContainer,
        onboardingBackground,
        onboardingDoc,
        splash
      ];
}

class Assets {
  Assets._();

  static const $AssetsIconsGen icons = $AssetsIconsGen();
  static const $AssetsImagesGen images = $AssetsImagesGen();
}

class AssetGenImage {
  const AssetGenImage(
    this._assetName, {
    this.size,
    this.flavors = const {},
  });

  final String _assetName;

  final Size? size;
  final Set<String> flavors;

  Image image({
    Key? key,
    AssetBundle? bundle,
    ImageFrameBuilder? frameBuilder,
    ImageErrorWidgetBuilder? errorBuilder,
    String? semanticLabel,
    bool excludeFromSemantics = false,
    double? scale,
    double? width,
    double? height,
    Color? color,
    Animation<double>? opacity,
    BlendMode? colorBlendMode,
    BoxFit? fit,
    AlignmentGeometry alignment = Alignment.center,
    ImageRepeat repeat = ImageRepeat.noRepeat,
    Rect? centerSlice,
    bool matchTextDirection = false,
    bool gaplessPlayback = false,
    bool isAntiAlias = false,
    String? package,
    FilterQuality filterQuality = FilterQuality.low,
    int? cacheWidth,
    int? cacheHeight,
  }) {
    return Image.asset(
      _assetName,
      key: key,
      bundle: bundle,
      frameBuilder: frameBuilder,
      errorBuilder: errorBuilder,
      semanticLabel: semanticLabel,
      excludeFromSemantics: excludeFromSemantics,
      scale: scale,
      width: width,
      height: height,
      color: color,
      opacity: opacity,
      colorBlendMode: colorBlendMode,
      fit: fit,
      alignment: alignment,
      repeat: repeat,
      centerSlice: centerSlice,
      matchTextDirection: matchTextDirection,
      gaplessPlayback: gaplessPlayback,
      isAntiAlias: isAntiAlias,
      package: package,
      filterQuality: filterQuality,
      cacheWidth: cacheWidth,
      cacheHeight: cacheHeight,
    );
  }

  ImageProvider provider({
    AssetBundle? bundle,
    String? package,
  }) {
    return AssetImage(
      _assetName,
      bundle: bundle,
      package: package,
    );
  }

  String get path => _assetName;

  String get keyName => _assetName;
}
