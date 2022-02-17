import 'package:flutter/material.dart';

class HomeBanner {
  final String bannerImage;
  final String eventTitle;
  final String eventContent;

  HomeBanner(
    {
      required this.eventTitle,
      required this.eventContent,
      required this.bannerImage,
    }
  );
}

List<HomeBanner> homeBannerList = [
  HomeBanner(eventTitle: "bannerimage", eventContent: "eventContent", bannerImage: "bannerImage")
];