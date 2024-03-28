import 'package:flutter/material.dart';

enum PostAction {
  like,
  dislike,
  share,
  favorite,
  rating,
  call,
  location,
  views,
}

const actionIcons = {
  PostAction.like: Icons.thumb_up_alt_outlined,
  PostAction.dislike: Icons.thumb_down_alt_outlined,
  PostAction.share: Icons.share,
  PostAction.favorite: Icons.favorite_border,
  PostAction.rating: Icons.star_border,
  PostAction.call: Icons.phone_outlined,
  PostAction.location: Icons.location_on_outlined,
  PostAction.views: Icons.remove_red_eye_outlined,
};

const iconColors = {
  PostAction.like: Color(0xFF03A86D),
  PostAction.dislike: Color(0xFF4B4B4B),
  PostAction.share: Color(0xFFB49219),
  PostAction.favorite: Color(0xFFFF9696),
  PostAction.rating: Color(0xFF003EDE),
  PostAction.call: Color(0xFF0C952A),
  PostAction.location: Color(0xFFCB0000),
  PostAction.views: Color(0xFF0F8AFC),
};

const actionLabels = {
  PostAction.like: 'Like',
  PostAction.dislike: 'Dislike',
  PostAction.share: 'Share',
  PostAction.favorite: 'Favorite',
  PostAction.rating: 'Rating',
  PostAction.call: 'Call',
  PostAction.location: 'Location',
  PostAction.views: 'Views',
};

class ItemAction {
  ItemAction({
    this.actionCount,
    required this.postAction,
  });

  final String? actionCount;
  final PostAction postAction;
}
