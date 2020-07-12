import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:mediadrip/common/models/feed/index.dart';

enum DripType {
  unset,
  image,
  audio,
  video,
}

class DripModel implements IFeedItem {
  final DripType type;
  final String link;
  final bool isDownloadableLink;
  final String author;
  final String title;
  final String description;
  final String thumbnail;
  final String image;
  final DateTime dateTime;

  DripModel({
    @required this.type,
    @required this.link,
    this.isDownloadableLink = false,
    @required this.author,
    @required this.title,
    @required this.dateTime,
    @required this.thumbnail,
    @required this.image,
    this.description
  });

  @override
  String dateTimeFormatted() {
    if(dateTime == null) return null;

    var dateFormat = DateFormat.yMMMMd('en_US').add_jm();

    return dateFormat.format(dateTime);
  }

  @override
  String toString() {
    return '${this.title} @ ${this.dateTimeFormatted} [${this.link}]';
  }
}